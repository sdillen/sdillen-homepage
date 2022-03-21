<template lang="pug">
  b-button(
    :href="link"
    target="_blank"
    variant="hidden"
  )
    b-avatar(:icon="icon").mr-3
    span.mr-auto
      | @{{ handle }}
</template>

<script lang="ts">
import Vue, { PropOptions } from 'vue'
export default Vue.extend({
  name: 'SocialMediaButton',
  props: {
    link: {
      type: String,
      required: true
    } as PropOptions,
    icon: {
      type: String,
      required: true
    } as PropOptions,
    handle: {
      type: String,
      required: true
    } as PropOptions
  }
})
</script>

<style scoped>
  a.btn span {
    color: var(--color);
  }

  a.btn span.b-avatar {
    background: var(--bg);
  }
</style>
