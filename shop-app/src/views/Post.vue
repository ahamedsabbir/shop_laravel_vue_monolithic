<script setup></script>
<template>
  <div class="card">
    <img src="/public/assets/img/p(2).jpg" class="card-img-top" alt="..." />
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">
        Some quick example text to build on the card title and make up the bulk
        of the card's content.
      </p>
      <router-link
        class="btn btn-primary"
        aria-current="page"
        :to="`/post/${1}`"
        >View</router-link
      >
    </div>
  </div>
</template>
<style scoped></style>
