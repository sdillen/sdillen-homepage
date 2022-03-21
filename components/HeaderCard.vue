<template lang="pug">
  .row
    .col.header
      h2
        | Stefan Dillenburg
      h4
        small
          |
          | IT Systems Engineer
    .col.profile-image(align="right")
      b-img(
        rounded="circle"
        src="https://avatars.githubusercontent.com/u/33925609?v=4"
        alt="Profile Portrait"
      )
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'HeaderCard'
})
</script>

<style scoped>
  .header h2 {
    margin-bottom: 0px;
  }

  .profile-image img {
    background-color: transparent;
    height: 100px;
    width: 100px;
  }
</style>
