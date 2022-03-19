<template lang="pug">
  .container-fluid
    .row.justify-content-center.app-navbar.fixed-top
      .col-lg-6.col-md-8.col-sm
        <AppNavbar/>
    .row.justify-content-center.pt-5.pb-5.app-content
      .col-lg-6.col-md-8.col-sm
        <Nuxt/>
    .row.justify-content-center.app-footer
      .col-lg-6.col-md-8.col-sm
        <AppFooter/>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'DefaultLayout'
})
</script>

<style scope>
  html {
    font-family: Roboto, sans-serif;
  }

  body {
    font-family: Roboto, sans-serif;
    background: #f8f9fa;
  }

  .app-navbar {
    background: rgba(33,37,41,0.75);
    color: #f8f9fa;
  }

  .app-content {
    background: #f8f9fa;
  }

  .app-footer {
    background: #f8f9fa;
  }
</style>
