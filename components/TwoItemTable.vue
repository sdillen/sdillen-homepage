<template lang="pug">
  table.table.table-hover.table-borderless
    tbody
      tr(v-for="item,index in items")
        td
          strong
            | {{ index }}
        td
          | {{ item }}
</template>

<script lang="ts">
import Vue, { PropOptions } from 'vue'

interface Items {
  [index: string]:{
    name: string
  }
}

export default Vue.extend({
  name: 'BioTable',
  props: {
    items: {
      type: Object,
      required: true
    } as PropOptions<Items>
  }
})
</script>

<style scoped>
</style>
