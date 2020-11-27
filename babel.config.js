/*
 * @Author: 刘海哥
 * @Date: 2020-11-24 17:32:27
 * @LastEditTime: 2020-11-25 15:40:08
 * @LastEditors: 刘海哥
 * @Description: 
 */
module.exports = {
  presets: ["@vue/cli-plugin-babel/preset"],
  'env': {
    'development': {
      // babel-plugin-dynamic-import-node plugin only does one thing by converting all import() to require().
      // This plugin can significantly increase the speed of hot updates, when you have a large number of pages.
      // https://panjiachen.github.io/vue-element-admin-site/guide/advanced/lazy-loading.html
      'plugins': ['dynamic-import-node']
    }
  }
};
