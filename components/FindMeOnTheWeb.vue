<template lang="pug">
  div
    .row
      .col
        h3
          u
            | Find me on the Web
    .row
      .col
        table.table.table-borderless
          tbody
            tr(v-for="item in SocialMedia")
              td
                SocialMediaButton(
                  :link="item.link"
                  :icon="item.icon"
                  :handle="item.handle"
                )
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'FindMeOnTheWeb',
  data () {
    return {
      SocialMedia: {
        github: {
          link: 'https://github.com/sdillen',
          icon: 'github',
          handle: 'sdillen'
        },
        twitter: {
          link: 'https://twitter.com/stefan_dillen',
          icon: 'twitter',
          handle: 'stefan_dillen'
        },
        linkedin: {
          link: 'https://linkedin.com/in/sdillen/',
          icon: 'linkedin',
          handle: 'Stefan Dillenburg'
        },
        youtube: {
          link: 'https://youtube.com/channel/UC1yzZeOFEKYNkcTmsy2nScA',
          icon: 'youtube',
          handle: 'Stefan Dillenburg'
        }
      }
    }
  }
})
</script>

<style scoped>
  span.b-avatar {
    background-color: var(--color);
  }

  a.btn-hidden:hover {
    color: var(--color);
    text-decoration: underline;
    text-underline-offset: 5px;
    background-color: rgba(0, 0, 0, 0.075)
  }
</style>
