<script lang="ts" setup>
import * as icons from "@/icons";

const props = defineProps<{
  type: keyof typeof types;
}>();

const types = {
  artist: {
    icon: icons.artist,
    name: "Artists",
  },
  album: {
    icon: icons.album,
    name: "Albums",
  },
  song: {
    icon: icons.song,
    name: "Songs",
  },
};

const type = types[props.type];
</script>

<template>
  <div class="flex flex-col justify-center items-center text-center min-h-screen-2/3 py-8">
    <IonIcon :icon="type.icon" class="text-5xl" />

    <h2 class="my-1 font-semibold text-xl">No {{ type.name.toLowerCase() }} yet.</h2>
    <p class="text-muted">{{ type.name }} you add to your library will be here.</p>
    <div class="mt-3">
      <IonButton fill="outline" :router-link="{ name: 'discover' }">
        <IonIcon slot="start" :icon="icons.search" />
        Discover
      </IonButton>
    </div>
  </div>
</template>
