<template lang="pug">
  li
    a(
      :href="link"
      target="_blank"
    )
      | {{ name }}
      |
      b-badge(v-if="mustRead" pill).ml-1
        | Must Read
    p
      | {{ description }}
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'BookListItem',
  props: {
    name: {
      type: String,
      required: true
    },
    link: {
      type: String,
      required: true
    },
    description: {
      type: String,
      required: true
    },
    mustRead: {
      type: Boolean,
      default: false
    }
  }
})
</script>

<style scoped>
  ul li a {
    color: var(--color);
  }
  ul li a:hover {
    color: var(--color);
    text-decoration: underline;
    text-underline-offset: 5px;
  }

  span.badge {
    color: var(--bg);
    background: var(--color);
  }
</style>
