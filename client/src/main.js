import Vue from 'vue'
import App from './App.vue'
import axios from "axios"
import VueRouter from 'vue-router'
import SearchFeature from '../src/pages/SearchFeature.vue'
import MMBFeature from '../src/pages/MMBFeature.vue'
import BookingFeature from '../src/pages/BookingFeature.vue'

import Stats from '../src/components/Stats.vue'

Vue.config.productionTip = false
const axiosconfig = {
  baseURL: 'http://localhost:8082/',
  timeout: 30000,
};

Vue.use(VueRouter)

const router = new VueRouter({
  routes: [

    { path: '/', component: SearchFeature },
    { path: '/mmb', component: MMBFeature },
    { path: '/booking', component: BookingFeature },
    { path: '/stats', component: Stats }
  ]
});

Vue.prototype.$http = axios.create(axiosconfig)
new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
