<script>
import axios from "axios";
import { RouterLink } from "vue-router";
import Loading from '../components/Loading.vue';

export default {
  components: { Loading },
    data() {
        return {
            loading: true,
            articles: [],
        };
    },
    methods: {
        async handleSubmit() {
            try {
                const token = this.$store.state.auth.token;
                axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
                const response = await axios.get("http://localhost/shop_laravel_vue_monolithic/laravel-app/public/api/articles", {token: token});
                setTimeout(() => {
                    this.articles = response.data.articles;
                    this.loading = false
                }, 1000)
            } catch (error) {
                console.error("Error fetching data:", error);
                this.$router.push('/login');
            }
        },
    },
    mounted() {
        this.handleSubmit();
    },
};
</script>
<template>
    <div class="container mt-4 mb-4">
        <div class="row">
            <div class="col-md-4 mb-4" v-for="article in articles" :key="article.id">
                <div class="card">
                    <img :src="`https://picsum.photos/id/${article.id}/200/100`" class="card-img-top" alt="..." />
                    <div class="card-body" style="min-height: 200px;">
                        <h5 class="card-title">{{ article.title }}</h5>
                        <p class="card-text">{{ article.body }}</p>
                        <p class="card-text">{{ article.cover_image }}</p>
                        <p class="card-text">Slug: {{ article.slug }}</p>
                        <router-link class="btn btn-primary" aria-current="page" :to="`/article/${article.id}`">View</router-link>
                        &nbsp;
                        <button class="btn btn-primary">Add</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <Loading v-if="loading"></Loading>
</template>
<style scoped></style>
