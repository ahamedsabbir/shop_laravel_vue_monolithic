import './assets/main.css';
import store from './store.js';
import ToastPlugin from 'vue-toast-notification';
import 'vue-toast-notification/dist/theme-sugar.css';
import router from './routers.js';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import { createApp } from 'vue';
import App from './App.vue';
import config from './config.js';

const app = createApp(App);
app.config.globalProperties.$config = config;
app.use(ToastPlugin).use(router).mount('#app');

