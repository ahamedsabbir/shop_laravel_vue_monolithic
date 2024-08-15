<script>
import axios from "axios";
import { RouterLink } from "vue-router";
import Loading from '../components/Loading.vue';

export default {
  components: { Loading },
    data() {
        return {
            loading: true,
            products: [],
        };
    },
    methods: {
        async handleSubmit() {
            try {
                const response = await axios.get("http://localhost/shop_laravel_vue_monolithic/laravel-app/public/api/products");
                setTimeout(() => {
                    this.products = response.data.products;
                    this.loading = false
                }, 1000)
            } catch (error) {
                console.error("Error fetching data:", error);
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
            <div class="col-md-4 mb-4" v-for="product in products" :key="product.id">
                <div class="card">
                    <img :src="`https://picsum.photos/id/${product.id}/200/100`" class="card-img-top" alt="..." />
                    <div class="card-body" style="min-height: 200px;">
                        <h5 class="card-title">{{ product.name }}</h5>
                        <p class="card-text">{{ product.description }}</p>
                        <p class="card-text">Price: {{ product.price }}</p>
                        <router-link class="btn btn-primary" aria-current="page" :to="`/post/${product.id}`">View</router-link>
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
