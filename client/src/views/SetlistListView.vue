<script setup lang="ts">
import type { Setlist } from "@/api";
import { DataSource } from "@/components";
import SetlistCard from "@/components/SetlistCard.vue";
import { useTemplateRef } from "vue";

const dataSource = useTemplateRef("dataSource");
</script>

<template>
  <AppView>
    <Head>
      <title>Setlists</title>
    </Head>
    <IonHeader translucent>
      <IonToolbar>
        <IonTitle>Setlists</IonTitle>

        <IonButtons slot="start">
          <IonBackButton class="md:hidden" text="" default-href="/library" />
        </IonButtons>
      </IonToolbar>
    </IonHeader>

    <IonContent fullscreen class="main-content">
      <IonHeader collapse="condense">
        <IonToolbar>
          <IonTitle size="large"> Setlists </IonTitle>
        </IonToolbar>
      </IonHeader>

      <IonRefresher
        v-if="dataSource"
        slot="fixed"
        @ion-refresh="dataSource?.reload().then(() => $event.target.complete())"
      >
        <IonRefresherContent />
      </IonRefresher>

      <DataSource ref="dataSource" v-slot="{ items }" src="setlists">
        <IonList>
          <div
            class="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6"
          >
            <SetlistCard
              v-for="setlist in items"
              :key="(setlist as Setlist).id"
              v-bind="setlist as Setlist"
            />
          </div>
        </IonList>
      </DataSource>
    </IonContent>
  </AppView>
</template>
