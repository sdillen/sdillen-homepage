<template lang="pug">
  table.table.table-hover.table-borderless
    tbody
      tr(v-for="item,index in items")
        td
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
  name: 'TwoItemTable',
  props: {
    items: {
      type: Object,
      required: true
    } as PropOptions<Items>
  }
})
</script>

<style scoped>
  table.table-hover tbody tr:hover td:first-child {
    text-decoration: underline;
    text-underline-offset: 5px;
  }

  td {
    color: var(--color);
  }
</style>
