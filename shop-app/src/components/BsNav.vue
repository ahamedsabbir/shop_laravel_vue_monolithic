<script>
import { RouterLink } from "vue-router";
export default {
  name: "BsNav",
};
</script>
<template>
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <router-link class="nav-link active" aria-current="page" :to="{ name: 'home' }">Home</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link active" aria-current="page" :to="{ name: 'posts' }">Posts</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" :to="{ name: 'articles' }">Article</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" :to="{ name: 'about' }">About</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" :to="{ name: 'contact' }">Contact</router-link>
          </li>
        </ul>
        <div class="d-flex">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                Dropdown
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Log-in</a></li>
                <li><button class="dropdown-item">Log-out</button></li>
                <li><router-link class="dropdown-item" :to="{name: 'register'}">Register</router-link></li>
                <li><a class="dropdown-item" href="#">Profile</a></li>
                <li><a class="dropdown-item" href="#">Dashboard</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
</template>
<style></style>
