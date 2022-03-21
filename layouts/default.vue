<template lang="pug">
  .container-fluid
    .row.justify-content-center.app-navbar.fixed-top
      .col-lg-6.col-md-8.col-sm
        AppNavbar
    .row.justify-content-center.app-content
      .col-lg-6.col-md-8.col-sm
        Nuxt
    .row.justify-content-center
      .col-lg-6.col-md-8.col-sm
        AppFooter
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'DefaultLayout'
})
</script>

<style scope>
  .app-navbar {
    background: var(--bg-secondary);
    color: var(--color-secondary);
    backdrop-filter: blur(5px);
  }

  .app-content {
    padding-top: 4rem;
    padding-bottom: 3rem;
    font-size: 20px;
  }

  u {
    text-underline-offset: 5px;
  }
</style>
