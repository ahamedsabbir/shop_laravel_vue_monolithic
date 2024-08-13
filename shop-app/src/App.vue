<script setup>
import { RouterView } from 'vue-router';
import BsNav from './components/BsNav.vue'
import BsFooter from './components/BsFooter.vue'
</script>

<template>
  <BsNav></BsNav>
  
  <main>
    <router-view />
  </main>
  <BsFooter></BsFooter>
</template>

<style scoped></style>
