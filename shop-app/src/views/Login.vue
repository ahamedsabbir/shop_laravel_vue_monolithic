<template>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">Login</div>
                    <div class="card-body">
                        <form @submit.prevent="handleSubmit">
                            <div class="mb-3">
                                <label for="email" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="email" v-model="form.email" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" v-model="form.password"
                                    required>
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
import {useToast} from 'vue-toast-notification';
const $toast = useToast();

export default {
    data() {
        return {
            form: {},
            auth: {}
        }
    },
    methods: {
        async handleSubmit() {
            try {
                axios.defaults.baseURL = this.$config.ApiUrl
                const response = await axios.post('/login', this.form)
                this.auth = response.data.user;
                this.auth.token = response.data.token;
                this.auth.type = response.data.type;
                this.$store.dispatch('callAuth', this.auth);
                $toast.success(response.data.msg || 'Login successfully');
                this.$router.push('/dashboard');
            } catch (error) {
                alert(error.response.data.msg || 'Error adding student')
                console.error('Error fetching data:', error)
            }
        }
    }
}
</script>