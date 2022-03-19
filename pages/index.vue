<template lang="pug">
  .container
    .row
      .col.header
        h2
          | Stefan Dillenburg
        h4
          small
            |
            | IT Systems Engineer
      .col.profile-image(align="right")
        b-img(rounded="circle" thumbnail src="https://avatars.githubusercontent.com/u/33925609?v=4")
    .row
      .col
        h3
          u
            | About Me
        p
          | I'm a professional IT Systems Engineer currently working at Fraunhofer FIT.
          | My journey so far took me through automation management with Ansible.
          | I've seen a lot of YAML by now and I guess it will get a lot more.
          | Working with containers became an obsession and Kubernetes played a big role in it.
          | I like programming on APIs and all sorts of CLI tooling primarily in Go.
        p
          | Recently I decided to start working on my bachelors degree in computer science.
        p
          | Besides that I'm a real sports enthusiast.
          | I felt for martial-arts over 10 years ago and can't stop spending my free time on it.
    .row
      .col
        h3
          u
            | Bio
    .row
      .col
        TwoItemTable(:items="PersonalBio")
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
  name: 'IndexPage',
  data () {
    return {
      PersonalBio: {
        1997: 'Born in Germany.',
        '2015 to present': 'IT Systems Engineer at Fraunhofer FIT.',
        '2021 to present': 'Computer Science Student.'
      },
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

<style scope>
  .header h2 {
    margin-bottom: 0px;
  }

  h3 u {
    text-underline-offset: 5px;
  }

  .profile-image img {
    height: 100px;
    width: 100px;
  }

  span.b-avatar {
    background-color: #000000;
  }

  .table-hover tbody tr:hover {
    text-decoration: underline;
    text-underline-offset: 5px;
    background-color: rgba(0, 0, 0, 0.075);
  }

  a.btn-hidden:hover {
    text-decoration: underline;
    text-underline-offset: 5px;
    background-color: rgba(0, 0, 0, 0.075)
  }
</style>
