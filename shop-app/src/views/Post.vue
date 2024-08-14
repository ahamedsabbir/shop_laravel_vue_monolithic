<script>
import axios from "axios";
import { RouterLink } from "vue-router";
import Loading from '../components/Loading.vue';

export default {
  components: { Loading },
    data() {
        return {
            loading: true,
            product: [],
        };
    },
    methods: {
        async handleSubmit() {
            try {
                const response = await axios.get("http://localhost/shop_laravel_vue_monolithic/laravel-app/public/api/product/" + this.$route.params.id);
                setTimeout(() => {
                    this.product = response.data.product;
                    this.loading = false
                }, 1000)
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
                    <img src="/public/assets/img/p(2).jpg" class="card-img-top" alt="..." />
                    <div class="card-body" style="min-height: 200px;">
                        <h5 class="card-title">{{ product.name }}</h5>
                        <p class="card-text">{{ product.description }}</p>
                        <p class="card-text">Price: {{ product.price }}</p>
                        <button class="btn btn-primary">Add</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</template>
<style scoped></style>
