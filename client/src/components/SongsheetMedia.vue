<script lang="ts" setup>
import YoutubeEmbed from "@/components/YoutubeEmbed.vue";
import { Tab, TabGroup, TabList, TabPanel, TabPanels } from "@headlessui/vue";
import { logoYoutube } from "ionicons/icons";

defineProps<{
  media: string[];
}>();
</script>

<template>
  <div
    v-if="media?.length > 0"
    class="md:absolute md:right-0 top-4 md:shadow-md md:border md:rounded dark:border-slate-900 md:w-72 lg:w-96"
  >
    <TabGroup>
      <TabPanels class="bg-black md:rounded overflow-hidden">
        <TabPanel v-for="src in media" :key="src">
          <YoutubeEmbed :src="src" />
        </TabPanel>
      </TabPanels>
      <TabList
        v-show="media.length > 1"
        class="p-2 flex gap-2 bg-slate-100 dark:bg-slate-800 md:border-none"
      >
        <Tab v-for="src in media" v-slot="{ selected }" :key="src" as="template">
          <button
            :class="[
              'px-4 py-2 rounded inline-flex align-center outline-none active:ring border',
              selected
                ? 'bg-blue-500 hover:bg-blue-400 text-white'
                : 'bg-slate-50 text-black hover:bg-slate-200',
            ]"
          >
            <IonIcon :icon="logoYoutube" />
          </button>
        </Tab>
      </TabList>
    </TabGroup>
  </div>
</template>
