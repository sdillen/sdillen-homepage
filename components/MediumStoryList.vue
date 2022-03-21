<template lang="pug">
  div
    .row
      .col
        h3
          u
            | Medium Stories
        p(v-if="$fetchState.pending")
          | Loading Posts...
        p(v-else-if="$fetchState.error")
          | An error occurred!
    .row(v-for="post in mediumPosts")
      .col
        a(
          :href="post.link"
          target="_blank"
        )
          .row
            .col-lg-10.col-md-10.col-sm
              h4
                | > {{ post.title }}
              p.text-muted
                | {{ formatPubDate(post.pubDate) }}
            .col-lg-2.col-md-2.d-none.d-md-block
              b-img-lazy(
                rounded
                :src="post.thumbnail"
                alt="Post Thumbnail"
              )
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'MediumStoryList',
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

<style scoped>
  a {
    color: var(--color);
  }

  a:hover {
    text-decoration: none;
  }

  a:hover h4 {
    text-decoration: underline;
    text-underline-offset: 5px;
  }

  a:hover p {
    text-decoration: none;
  }

  a img {
    height: 60px;
    width: 85px;
  }
</style>
