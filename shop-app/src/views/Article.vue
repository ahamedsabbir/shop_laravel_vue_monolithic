<script>
import axios from "axios";
import { RouterLink } from "vue-router";
import Loading from "../components/Loading.vue";

export default {
    components: { Loading },
    data() {
        return {
            loading: true,
            article: [],
        };
    },
    methods: {
        async handleSubmit() {
            try {
                const token = this.$store.state.auth.token;
                axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
                const response = await axios.get("http://localhost/shop_laravel_vue_monolithic/laravel-app/public/api/article/" + this.$route.params.id, { token: token });
                setTimeout(() => {
                    this.article = response.data.article;
                    this.loading = false;
                    console.log(this.article);
                }, 1000);
            } catch (error) {
                console.error("Error fetching data:", error);
            }
        },
    },
    mounted() {
        this.handleSubmit();
        console.log(this.$route.params.id);
    },
};
</script>
<template>
    <Loading v-if="loading"></Loading>
    <div class="container mt-4 mb-4">
        <div class="row">
            <div class="col-md-12 mb-4">
                <div class="card">
                    <img src="https://picsum.photos/200/100" class="card-img-top" alt="..." />
                    <div class="card-body" style="min-height: 200px">
                        <h5 class="card-title">{{ article.title }}</h5>
                        <p class="card-text">{{ article.body }}</p>
                        <p class="card-text">{{ article.cover_image }}</p>
                        <p class="card-text">Slug: {{ article.slug }}</p>
                        <button class="btn btn-primary">Add</button>
                    </div>
                </div>
            </div>
        </div>
    </div>   
</template>
<style scoped></style>
