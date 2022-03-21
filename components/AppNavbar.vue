<template lang="pug">
  b-nav
    b-navbar-brand(to="/").pt-2.d-none.d-md-block
      | Stefan Dillenburg
    b-navbar-brand(to="/").pl-3.pt-2.d-block.d-md-none
      | SD
    b-nav-item(to="/works").pt-1
      | Works
    b-nav-item(to="/posts").pt-1
      | Posts
    b-nav-item.ml-auto(align="right")
      ColorModeSwitch
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'AppNavbar'
})
</script>

<style scope>
  a.navbar-brand {
    color: var(--color-secondary);
  }

  a.nav-link {
    color: var(--color-secondary);
  }

  .nav-item a:hover {
    text-decoration: underline;
    text-underline-offset: 5px;
  }
</style>
