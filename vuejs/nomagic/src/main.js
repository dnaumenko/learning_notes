import Vue from 'vue';
import App from './App.vue';

import "boostrap/dist/css/boostrap.min.css";

let counter = 1;

let container = document.createElement("div");
constainer.classList.add("text-center", "p-3");

Vue.config.productionTip = false;

new Vue({
  render: h => h(App)
}).$mount('#app');
