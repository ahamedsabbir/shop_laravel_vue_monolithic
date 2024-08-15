<script>
import axios from "axios";
export default {
    data() {
        return {
            form: {}
        }
    },
    methods: {
        async handleSubmit() {
            try {
                const response = await axios.post("http://localhost/shop_laravel_vue_monolithic/laravel-app/public/api/product/insert", this.form);
                $toast.success(response.data.msg);
                //this.$router.push("/posts");
            } catch (error) {
                console.error("Error fetching data:", error);
            }
        }
    }
}
</script>
<template>
    <div class="container mt-5">
        <h1>Post Insert</h1>
        <form @submit.prevent="handleSubmit">
            <div class="mb-3">
                <label for="exampleInputName" class="form-label">Name</label>
                <input type="text" class="form-control" id="exampleInputName" v-model="form.name"/>
            </div>
            <div class="mb-3">
                <label for="exampleInputPrice" class="form-label">Price</label>
                <input type="text" class="form-control" id="exampleInputPrice" v-model="form.price"/>
            </div>
            <div class="mb-3">
                <label for="exampleInputDescription" class="form-label">Description</label>
                <textarea class="form-control" id="exampleInputDescription" rows="3" v-model="form.description"></textarea>
            </div>
            <div class="mb-3">
                <label for="exampleInputImage" class="form-label">Image</label>
                <input type="file" class="form-control" id="exampleInputImage" />
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</template>
<style></style>
