<template lang="pug">
  div
    b-button(
      v-if="$colorMode.value === 'light'"
      variant="hidden"
      size="sm"
      @click="$colorMode.preference = 'dark'"
    )
      b-icon(icon="moon")
    b-button(
      v-else-if="$colorMode.value === 'dark'"
      variant="hidden"
      size="sm"
      @click="$colorMode.preference = 'light'"
    )
      b-icon(icon="brightness-high")
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'ColorModeSwitch'
})
</script>

<style scoped>
  .nav-item a button svg {
    color: var(--color-secondary);
  }
</style>
