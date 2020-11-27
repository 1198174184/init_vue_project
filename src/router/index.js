/*
 * @Author: 刘海哥
 * @Date: 2020-11-24 17:32:27
 * @LastEditTime: 2020-11-26 17:04:54
 * @LastEditors: 刘海哥
 * @Description: 
 */
import Vue from "vue"
import VueRouter from "vue-router"
import Home from "@/views/Home.vue"

Vue.use(VueRouter)

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home
  },
  {
    path: "/about",
    name: "About",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ "@/views/About.vue")
  },
  {
    path: "/test1",
    name: "test1",
    component: () => import(/* webpackChunkName: "test1" */ "@/views/testPages/test1.vue")
  }
]

const router = new VueRouter({
  routes
})

export default router
