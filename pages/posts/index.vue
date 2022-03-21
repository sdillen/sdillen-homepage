<template lang="pug">
  .container
    PageHeader(name="Posts")
    .row
      .col
        h3
          u
            | Featured
    .row
      .col
        NuxtLink.post-link(to="/posts/books")
          h4
            | > Books I Recommend
    MediumStoryList
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'PostsPage',
  data () {
    return {
      mediumPosts: []
    }
  },
  async fetch () {
    this.mediumPosts = await fetch(
      'https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/feed/@sdillen'
    ).then(res => res.json()).then(response => response.items)
  },
  methods: {
    formatPubDate (pubDate: string) {
      const year: string = pubDate.slice(0, 4)
      const month: string = pubDate.slice(5, 7)
      const day: string = pubDate.slice(8, 10)
      pubDate = `${this.monthToWord(month)} ${day}, ${year}`
      return pubDate
    },
    monthToWord (month: string) {
      interface monthsArray {
        [index: string]: string
        }
      const months: monthsArray = {
        '01': 'Jan.',
        '02': 'Feb.',
        '03': 'Mar.',
        '04': 'Apr.',
        '05': 'Mai',
        '06': 'June',
        '07': 'July',
        '08': 'Aug.',
        '09': 'Sept.',
        10: 'Oct.',
        11: 'Nov.',
        12: 'Dec.'
      }
      return months[month]
    }
  }
})
</script>

<style scope>
  a.post-link {
    color: var(--color);
  }

  a.post-link:hover h4 {
    color: var(--color);
    text-underline-offset: 5px;
  }

</style>
