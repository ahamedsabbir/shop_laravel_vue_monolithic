<script setup>
import { RouterView } from 'vue-router';
import BsNav from './components/BsNav.vue'
import BsFooter from './components/BsFooter.vue'
</script>

<template>
  <main>
    <BsNav></BsNav>
    <router-view />
    <BsFooter></BsFooter>
  </main>
</template>

<style scoped></style>
