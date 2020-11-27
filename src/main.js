/*
 * @Author: 刘海哥
 * @Date: 2020-11-24 17:32:27
 * @LastEditTime: 2020-11-26 13:24:14
 * @LastEditors: 刘海哥
 * @Description: .
 */
import Vue from "vue"
import 'normalize.css' // browser CSS resets

import App from "./App.vue"
import "./registerServiceWorker"
import router from "./router"
import store from "./store"

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app")
