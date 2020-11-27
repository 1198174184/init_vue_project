<!--
 * @Author: 刘海哥
 * @Date: 2020-11-26 14:39:01
 * @LastEditTime: 2020-11-26 17:05:30
 * @LastEditors: 刘海哥
 * @Description: 
-->

<template>
    <div class="test-page">
        this is a test page
    </div>
</template>

<script>
export default {
    name: 'testPage',
    data() {
        return {}
    },
    mounted() {
        console.log('this is a test page')
    },
    methods: {}
}
</script>

<style scoped lang='scss'>
.test-page {
    width: 100vw;
    height: 100vh;
    background-image: linear-gradient(to right, #fad7a1, #e96d71);
}
</style>