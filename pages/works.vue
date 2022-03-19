<template lang="pug">
  .container
    .row
      h3
        u
          | Works
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'WorksPage'
})
</script>

<style scoped>
  h3 u {
    text-underline-offset: 5px;
  }
</style>
