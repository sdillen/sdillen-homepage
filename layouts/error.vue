<template lang="pug">
  .container
    .row.text-center
      .col(v-if="error.statusCode == 404")
        h1.error-code
          | 404
        h2
          | Page Not Found
      .col(v-else-if="error.statusCode == 500")
        h1.error-code
          | 500
        h2
          | Server Error
      .col(v-else)
        h1.error-code
          | {{ error.statusCode }}
        h2
          | Error Occurred
    .row.text-center
      .col
        NuxtLink(to="/").text-muted
          | Go to the front page ->
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'ErrorPage',
  props: {
    error: {
      type: Object,
      required: true
    }
  }
})
</script>

<style scoped>
  .error-code {
    font-size: 12vw;
  }
</style>
