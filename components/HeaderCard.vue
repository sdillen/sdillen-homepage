<template lang="pug">
  div
    .row
      .col-8
        h1
          | Stefan Dillenburg
        h2.d-none.d-md-block
          small
            |
            | IT Systems Engineer
      .col-4.profile-image(align="right")
        b-img(
          rounded="circle"
          src="https://avatars.githubusercontent.com/u/33925609?v=4"
          alt="Profile Portrait"
        )
    .row.d-sm-block.d-md-none
      .col
        h2
          small
            | IT Systems Engineer
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'HeaderCard'
})
</script>

<style scoped>
  .profile-image img {
    background-color: transparent;
    height: 100px;
    width: 100px;
  }
</style>
