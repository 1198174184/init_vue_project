<!--
 * @Author: 刘海哥
 * @Date: 2020-11-24 17:32:27
 * @LastEditTime: 2020-11-26 17:38:42
 * @LastEditors: 刘海哥
 * @Description: 
-->
<template>
  <div class="home">
    <img alt="Vue logo" src="@src/assets/images/logo.png" />
    <HelloWorld msg="Welcome to Your Vue.js App" />
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue"

export default {
  name: "Home",
  components: {
    HelloWorld
  }
}
</script>
