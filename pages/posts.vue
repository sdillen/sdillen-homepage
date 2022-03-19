<template lang="pug">
  .container
    .row
      h3
        u
          | Posts
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'PostsPage'
})
</script>

<style scope>
  h3 u {
    text-underline-offset: 5px;
  }
</style>
