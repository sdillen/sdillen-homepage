<template lang="pug">
  .container
    .row
      .col
        h2
          | Books I Recommend
        p
          | A list of all kind of books I could get my grasp on.
          | I try to leave a short gist of why in my opinion these books are worth giving a try.
          | There is also always a link to Amazon, to get some details.
          | Hopefully you find one or the other book.
    BookList(v-for="list in bookLists" :title="list.name")
      BookListItem(
        v-for="book in list.books"
        :name="book.name"
        :link="book.link"
        :description="book.description"
        v-if="book.mustRead"
        mustRead
      )
      BookListItem(
        v-else
        :name="book.name"
        :link="book.link"
        :description="book.description"
      )
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'BooksPage',
  data () {
    return {
      bookLists: [
        {
          name: 'Tech Novels',
          books: [
            {
              name: 'Soul of a New Machine - Tracy Kidder',
              link: 'https://amzn.to/3Ju7Egv',
              description: 'A gripping story about the drama, comedy and excitement of bringing a new computer to life. I would recommend this book to anybody who is interested in Computer Science. This book can fuse a lit on you.',
              mustRead: true
            },
            {
              name: 'The Phoenix Project - Gene Kim',
              link: 'https://amzn.to/3imNwRH',
              description: 'This book is like a handbook for guiding you threw the DevOps way. It achieves that alongside a wonderful storyline that get\'s you hooked from the start. After the read I had a different look on myself and process structures in our company.'
            },
            {
              name: 'Blackout - Marc Elsberg',
              link: 'https://amzn.to/3s8wk7V',
              description: 'A thrilling story about what could happen if our society undergoes a continent wide blackout. The author has an appealing way in creating all those characters that are involved at the same time. You as a reader are privileged to receive insights in all of those. Not to forget, there are hackers involved otherwise it wouldn\'t be in this category.'
              }
          ]
        },
        {
          name: 'Self Development',
          books: [
            {
              name: '12 Rules for Life - Jordan Peterson',
              link: 'https://amzn.to/3CVtAPp',
              description: '',
              mustRead: true
            },
            {
              name: 'Quiet - Susan Cain',
              link: 'https://amzn.to/3woPbOQ',
              description: ''
            }
          ]
        },
        {
          name: 'Scientific',
          books: [
            {
              name: 'Why We Sleep - Matthew Walker',
              link: 'https://amzn.to/34X1u9T',
              description: 'Sleep nowadays get\'s really overlooked. We tend to make bad decisions on our sleep routines and compromise it repeatedly.'
            },
            {
              name: 'Sapiens A Brief History of Humankind - Yuval Noah Harani',
              link: '',
              description: '',
              mustRead: true
            },
            {
              name: 'Brief Answers to the Big Questions - Stephen Hawking',
              link: '',
              description: ''
            },
            {
              name: 'A Brief History of Time - Stephen Hawking',
              link: '',
              description: ''
            }
          ]
        },
        {
          name: 'Biographies',
          books: [
            {
              name: 'Behind The Mask - Tyson Fury',
              link: '',
              description: ''
            }
          ]
        }
      ]
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
