<template lang="pug">
  b-nav
    b-navbar-brand(to="/")
      | Stefan Dillenburg
    b-nav-item(to="works")
      | Works
    b-nav-item(to="posts")
      | Posts
</template>

<script lang="ts">
</script>

<style scope>
  a.navbar-brand {
    color: #f8f9fa;
  }

  a.nav-link {
    color: #f8f9fa;
  }

  .nav-item a:hover {
    text-decoration: underline;
    text-underline-offset: 5px;
  }
</style>
