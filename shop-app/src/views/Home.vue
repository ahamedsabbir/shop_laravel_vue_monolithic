<script setup>
import {useToast} from 'vue-toast-notification';
import BsCarousel from '../components/BsCarousel.vue'
const $toast = useToast();
const clickHandler = () => {
    $toast.error('clicked');
}
</script>
<template>
    <BsCarousel></BsCarousel>
    <h1>Home</h1>
    <button @click="clickHandler" class="btn btn-primary">Click me</button>
</template>
<style scoped>
</style>
