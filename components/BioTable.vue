<template lang="pug">
  div
    .row
      .col
        h3
          u
            | Bio
    .row
      .col
        TwoItemTable(:items="PersonalBio")
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'BioTable',
  data () {
    return {
      PersonalBio: {
        1997: 'Born in Germany.',
        '2015 to present': 'IT Systems Engineer at Fraunhofer FIT.',
        '2021 to present': 'Computer Science Student.'
      }
    }
  }
})
</script>

<style scoped>
</style>
