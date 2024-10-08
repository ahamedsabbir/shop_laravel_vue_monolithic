import { createRouter, createWebHistory } from 'vue-router'
import Home from '@/views/Home.vue'
import About from '@/views/About.vue'
import Posts from '@/views/Posts.vue'
import Post from '@/views/Post.vue'
import Contact from '@/views/Contact.vue'
import Article from '@/views/Article.vue'
import Articles from '@/views/Articles.vue'
import Register from '@/views/Register.vue'
import Dashboard from '@/views/Dashboard.vue'
import Login from '@/views/Login.vue'
import Profile from '@/views/Profile.vue'
import PostInsert from '@/views/PostInsert.vue'


const routes = [
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/about',
    name: 'about',
    component: About
  },
  {
    path: '/posts',
    name: 'posts',
    component: Posts
  },
  {
    path: '/post/:id',
    name: 'post',
    component: Post
  },
  {
    path: '/article/:id',
    name: 'article',
    component: Article 
  },
  {
    path: '/articles',
    name: 'articles',
    component: Articles
  },
  {
    path: '/contact',
    name: 'contact',
    component: Contact
  },
  {
    path: '/register',
    name: 'register',
    component: Register
  },
  {
    path: '/dashboard',
    name: 'dashboard',
    component: Dashboard
  },
  {
    path: '/login',
    name: 'login',
    component: Login
  },
  {
    path: '/postinsert',
    name: 'postinsert',
    component: PostInsert
  },
  {
    path: '/profile',
    name: 'profile',
    component: Profile
  }
]

const router = createRouter({
  history: createWebHistory('/'),
  routes
})

export default router