<template>
  <nav class="navbar navbar-expand-lg">
    <ul class="navbar-nav mx-auto">
      <li class="nav-item">
        <router-link class="nav-link" to="/">Search</router-link>
      </li>
      <li class="nav-item">
        <router-link class="nav-link" to="/booking">Booking</router-link>
      </li>
      <li class="nav-item">
        <router-link class="nav-link" to="/mmb">MMB</router-link>
      </li>
    </ul>
  </nav>
</template>  

<script>
export default {
  name: "Navigation",
};
</script>
<style lang="scss">
nav {
  display: inline-block;
}
ul {
  list-style: none;
  li {
    float: left;
    margin: 10px;
  }
  a {
    font-weight: 700;
    text-decoration: none;
    color: #5f738c;
    &:hover {
      color: #005c4e;
    }
    &.router-link-exact-active {
      color: #00a991;
    }
  }
}
</style>