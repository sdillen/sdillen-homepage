<template lang="pug">
  div
    .row
      .col
        h3
          u
            | {{ title }}
    .row
      .col
        ul
          slot
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'BookList',
  props: {
    title: {
      type: String,
      required: true
    }
  }
})
</script>
