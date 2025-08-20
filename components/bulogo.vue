<script setup>
defineProps({
  // keep these so slidetop.vue can pass them; we won't use them here
  color: { type: String, default: '' },
  color2: { type: String, default: '' },
})
</script>

<template>
  <img src="/bu_logo.png" alt="Boston University" class="h-9" />
</template>
