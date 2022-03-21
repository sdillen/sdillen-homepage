<template lang="pug">
  .row
    .col
      h2
        | {{ name }}
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'PageHeader',
  props: {
    name: {
      type: String,
      required: true
    }
  }
})
</script>
