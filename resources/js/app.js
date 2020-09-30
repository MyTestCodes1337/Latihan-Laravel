/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');


window.Vue = require('vue');
import VueRouter from 'vue-router';
Vue.use(VueRouter);

import VueAxios from 'vue-axios';

import axios from 'axios';

// import App from './App.vue';
Vue.use(VueAxios, axios);


// import IndexComponent from './components/pegawai/IndexComponent';
// import CreateComponent from './components/pegawai/CreateComponent';
// import EditComponent from './components/pegawai/EditComponent';
// import ViewComponent from './components/pegawai/ViewComponent';

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i);
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));

Vue.component('index-component', require('./components/ExampleComponent.vue').default);

// define routes for pegawais
// const routes = [
// {
//   path: '/',
//   name: 'pegawaiIndex',
//   component: IndexComponent
// },
// {
//   path: '/create',
//   name: 'pegawaiCreate',
//   component: CreateComponent
// },
// {
//   path: '/view/:id',
//   name: 'pegawaiView',
//   component: ViewComponent
// }
// ];
// const router = new VueRouter({ routes });
// const app = new Vue({
//   router
// }).$mount('#app');

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',
});
