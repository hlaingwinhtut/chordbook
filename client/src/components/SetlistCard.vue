<script lang="ts" setup>
import SetlistAvatar from "@/components/SetlistAvatar.vue";

defineProps<{
  id: string;
  title: string;
  description?: string;
  thumbnails: string[];
}>();
</script>

<template>
  <IonItem
    button
    :router-link="{ name: 'setlist', params: { id } }"
    class="rounded group @container"
    :detail="false"
    lines="none"
  >
    <IonLabel class="me-0 relative aspect-square rounded-lg overflow-hidden">
      <div class="absolute inset-0 w-full h-full">
        <SetlistAvatar :id="id" :thumbnails="thumbnails" />
      </div>
      <div
        class="relative w-full h-full flex items-end p-4 bg-gradient-to-b from-transparent from-50% to-black/60 to-90%"
      >
        <div class="text-shadow font-semibold text-white text-balance line-clamp-3">
          {{ title }}
        </div>
      </div>
    </IonLabel>
  </IonItem>
</template>

<style scoped>
/* ion-item {
  --padding-start: 0;
  --inner-padding-end: 0;
  @apply m-[16px];
}

ion-label {
  @apply m-0;
} */
</style>
