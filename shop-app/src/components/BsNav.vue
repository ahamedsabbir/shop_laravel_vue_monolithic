<script>
import axios from "axios";
import { mapState, mapGetters, mapActions } from "vuex";
import { RouterLink } from "vue-router";
import { useToast } from "vue-toast-notification";
const $toast = useToast();

export default {
  name: "BsNav",
  data() {
    return {};
  },
  methods: {
    async clickLogout() {
      try {
        axios.defaults.baseURL = this.$config.ApiUrl;
        const token = this.$store.state.auth.token;
        axios.defaults.headers.common["Authorization"] = `Bearer ${token}`;
        const response = await axios.post("/logout", { token: token });
        this.$store.dispatch("callAuth", {});
        $toast.success(response.data.msg || "logout successfully");
        this.$router.push("/login");
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    },
  },
  computed: {
    ...mapState(["auth"]),
  },
};
</script>
<template>
  <div class="container">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">
          <img :src="$store.getters.getImage" alt="Logo" width="30" height="30" class="d-inline-block align-text-top" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <router-link class="nav-link active" aria-current="page" :to="{ name: 'home' }">Home</router-link>
            </li>
            <li class="nav-item dropdown">
              <router-link class="nav-link dropdown-toggle" :to="{ name: 'posts' }" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">
                Posts
              </router-link>
              <ul class="dropdown-menu">
                <li>
                  <router-link class="dropdown-item" aria-current="page" :to="{ name: 'postinsert' }">Insert</router-link>
                </li>
                <li>
                  <router-link class="dropdown-item" aria-current="page" :to="{ name: 'posts' }">Show</router-link>
                </li>
              </ul>
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
        </div>
        <div class="d-flex">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                {{ $store.state.auth.name || "visitor" }}
              </a>
              <ul class="dropdown-menu">
                <li v-show="!$store.state.auth.name">
                  <router-link class="dropdown-item" :to="{ name: 'login' }">Login</router-link>
                </li>
                <li v-show="!$store.state.auth.name">
                  <router-link class="dropdown-item" :to="{ name: 'register' }">Register</router-link>
                </li>
                <li v-show="$store.state.auth.name">
                  <router-link class="dropdown-item" :to="{ name: 'profile' }">Profile</router-link>
                </li>
                <li v-show="$store.state.auth.name">
                  <router-link class="dropdown-item" :to="{ name: 'dashboard' }">Dashboard</router-link>
                </li>
                <li v-show="$store.state.auth.name">
                  <button class="dropdown-item" @click="clickLogout">
                    Logout
                  </button>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
</template>
<style></style>
