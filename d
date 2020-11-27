[33mcommit 895aef83f25daa5b201dea9336a607b6b2557e78[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: 15122188185 <zhang-xiankai@outlook.com>
Date:   Thu Nov 26 18:08:36 2020 +0800

    init

[1mdiff --git a/.env.development b/.env.development[m
[1mnew file mode 100644[m
[1mindex 0000000..de583d0[m
[1m--- /dev/null[m
[1m+++ b/.env.development[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m# just a flag[m
[32m+[m[32mENV = 'development'[m
[32m+[m
[32m+[m[32m# base api[m
[32m+[m[32mVUE_APP_BASE_API = '/dev-api'[m
[1mdiff --git a/.env.production b/.env.production[m
[1mnew file mode 100644[m
[1mindex 0000000..80c8103[m
[1m--- /dev/null[m
[1m+++ b/.env.production[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m# just a flag[m
[32m+[m[32mENV = 'production'[m
[32m+[m
[32m+[m[32m# base api[m
[32m+[m[32mVUE_APP_BASE_API = '/prod-api'[m
[32m+[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mindex 4ec8281..99ea28a 100644[m
[1m--- a/.gitignore[m
[1m+++ b/.gitignore[m
[36m@@ -17,6 +17,7 @@[m [myarn-error.log*[m
 pnpm-debug.log*[m
 [m
 # Editor directories and files[m
[32m+[m[32m.history[m
 .idea[m
 .vscode[m
 *.suo[m
[1mdiff --git a/README.md b/README.md[m
[1mindex 83337cb..f13fe87 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -7,7 +7,7 @@[m [mnpm install[m
 [m
 ### Compiles and hot-reloads for development[m
 ```[m
[31m-npm run serve[m
[32m+[m[32mnpm run dev[m
 ```[m
 [m
 ### Compiles and minifies for production[m
[1mdiff --git a/babel.config.js b/babel.config.js[m
[1mindex 397abca..2435893 100644[m
[1m--- a/babel.config.js[m
[1m+++ b/babel.config.js[m
[36m@@ -1,3 +1,18 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-24 17:32:27[m
[32m+[m[32m * @LastEditTime: 2020-11-25 15:40:08[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description:[m[41m [m
[32m+[m[32m */[m
 module.exports = {[m
[31m-  presets: ["@vue/cli-plugin-babel/preset"][m
[32m+[m[32m  presets: ["@vue/cli-plugin-babel/preset"],[m
[32m+[m[32m  'env': {[m
[32m+[m[32m    'development': {[m
[32m+[m[32m      // babel-plugin-dynamic-import-node plugin only does one thing by converting all import() to require().[m
[32m+[m[32m      // This plugin can significantly increase the speed of hot updates, when you have a large number of pages.[m
[32m+[m[32m      // https://panjiachen.github.io/vue-element-admin-site/guide/advanced/lazy-loading.html[m
[32m+[m[32m      'plugins': ['dynamic-import-node'][m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
 };[m
[1mdiff --git a/jsconfig.json b/jsconfig.json[m
[1mnew file mode 100644[m
[1mindex 0000000..00ddc21[m
[1m--- /dev/null[m
[1m+++ b/jsconfig.json[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-25 16:48:45[m
[32m+[m[32m * @LastEditTime: 2020-11-25 17:04:26[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description: 表示该目录是JavaScript项目的根目录,jsconfig.json源于tsconfig.json，是TypeScript的配置文件。jsconfig.json相当于tsconfig.json的“allowJs”属性设置为true[m
[32m+[m[32m *[m
[32m+[m[32m * noLib	                不包含默认库文件（lib.d.ts）	      string	-[m
[32m+[m[32m * target	                指定要使用的默认库（lib.d.ts）。 值是“es3”，“es5”，“es6”，“es2015”，“es2016”，“es2017”，“es2018”，“esnext”。	string	-[m
[32m+[m[32m * checkJs	              启用JavaScript文件的类型检查。	boolean	true[m
[32m+[m[32m * experimentalDecorators	为拟议的ES装饰器提供实验支持。	string	-[m
[32m+[m[32m * allowSyntheticDefaultImports	允许从没有默认导出的模块进行默认导入。 这不会影响代码发出，只会影响类型检查。	boolean	true[m
[32m+[m[32m * baseUrl	              用于解析非相对模块名称的基目录。	string	-[m
[32m+[m[32m * paths	                指定相对于baseUrl选项计算的路径映射(别名)。	object	如{"ClientApp/*": ["./ClientApp/*"]}[m
[32m+[m[32m */[m
[32m+[m[32m{[m
[32m+[m[32m  "compilerOptions": {[m
[32m+[m[32m    "baseUrl": "./",[m
[32m+[m[32m    "paths": {[m
[32m+[m[32m      "@/*": ["src/*"][m
[32m+[m[32m    }[m
[32m+[m[32m  },[m
[32m+[m[32m  "exclude": ["node_modules", "dist"][m
[32m+[m[32m}[m
[1mdiff --git a/mock/index.js b/mock/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..c514c13[m
[1m--- /dev/null[m
[1m+++ b/mock/index.js[m
[36m@@ -0,0 +1,57 @@[m
[32m+[m[32mconst Mock = require('mockjs')[m
[32m+[m[32mconst { param2Obj } = require('./utils')[m
[32m+[m
[32m+[m[32mconst user = require('./user')[m
[32m+[m[32mconst table = require('./table')[m
[32m+[m
[32m+[m[32mconst mocks = [[m
[32m+[m[32m  ...user,[m
[32m+[m[32m  ...table[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32m// for front mock[m
[32m+[m[32m// please use it cautiously, it will redefine XMLHttpRequest,[m
[32m+[m[32m// which will cause many of your third-party libraries to be invalidated(like progress event).[m
[32m+[m[32mfunction mockXHR() {[m
[32m+[m[32m  // mock patch[m
[32m+[m[32m  // https://github.com/nuysoft/Mock/issues/300[m
[32m+[m[32m  Mock.XHR.prototype.proxy_send = Mock.XHR.prototype.send[m
[32m+[m[32m  Mock.XHR.prototype.send = function() {[m
[32m+[m[32m    if (this.custom.xhr) {[m
[32m+[m[32m      this.custom.xhr.withCredentials = this.withCredentials || false[m
[32m+[m
[32m+[m[32m      if (this.responseType) {[m
[32m+[m[32m        this.custom.xhr.responseType = this.responseType[m
[32m+[m[32m      }[m
[32m+[m[32m    }[m
[32m+[m[32m    this.proxy_send(...arguments)[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  function XHR2ExpressReqWrap(respond) {[m
[32m+[m[32m    return function(options) {[m
[32m+[m[32m      let result = null[m
[32m+[m[32m      if (respond instanceof Function) {[m
[32m+[m[32m        const { body, type, url } = options[m
[32m+[m[32m        // https://expressjs.com/en/4x/api.html#req[m
[32m+[m[32m        result = respond({[m
[32m+[m[32m          method: type,[m
[32m+[m[32m          body: JSON.parse(body),[m
[32m+[m[32m          query: param2Obj(url)[m
[32m+[m[32m        })[m
[32m+[m[32m      } else {[m
[32m+[m[32m        result = respond[m
[32m+[m[32m      }[m
[32m+[m[32m      return Mock.mock(result)[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  for (const i of mocks) {[m
[32m+[m[32m    Mock.mock(new RegExp(i.url), i.type || 'get', XHR2ExpressReqWrap(i.response))[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mmodule.exports = {[m
[32m+[m[32m  mocks,[m
[32m+[m[32m  mockXHR[m
[32m+[m[32m}[m
[32m+[m
[1mdiff --git a/mock/mock-server.js b/mock/mock-server.js[m
[1mnew file mode 100644[m
[1mindex 0000000..8941ec0[m
[1m--- /dev/null[m
[1m+++ b/mock/mock-server.js[m
[36m@@ -0,0 +1,81 @@[m
[32m+[m[32mconst chokidar = require('chokidar')[m
[32m+[m[32mconst bodyParser = require('body-parser')[m
[32m+[m[32mconst chalk = require('chalk')[m
[32m+[m[32mconst path = require('path')[m
[32m+[m[32mconst Mock = require('mockjs')[m
[32m+[m
[32m+[m[32mconst mockDir = path.join(process.cwd(), 'mock')[m
[32m+[m
[32m+[m[32mfunction registerRoutes(app) {[m
[32m+[m[32m  let mockLastIndex[m
[32m+[m[32m  const { mocks } = require('./index.js')[m
[32m+[m[32m  const mocksForServer = mocks.map(route => {[m
[32m+[m[32m    return responseFake(route.url, route.type, route.response)[m
[32m+[m[32m  })[m
[32m+[m[32m  for (const mock of mocksForServer) {[m
[32m+[m[32m    app[mock.type](mock.url, mock.response)[m
[32m+[m[32m    mockLastIndex = app._router.stack.length[m
[32m+[m[32m  }[m
[32m+[m[32m  const mockRoutesLength = Object.keys(mocksForServer).length[m
[32m+[m[32m  return {[m
[32m+[m[32m    mockRoutesLength: mockRoutesLength,[m
[32m+[m[32m    mockStartIndex: mockLastIndex - mockRoutesLength[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction unregisterRoutes() {[m
[32m+[m[32m  Object.keys(require.cache).forEach(i => {[m
[32m+[m[32m    if (i.includes(mockDir)) {[m
[32m+[m[32m      delete require.cache[require.resolve(i)][m
[32m+[m[32m    }[m
[32m+[m[32m  })[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// for mock server[m
[32m+[m[32mconst responseFake = (url, type, respond) => {[m
[32m+[m[32m  return {[m
[32m+[m[32m    url: new RegExp(`${process.env.VUE_APP_BASE_API}${url}`),[m
[32m+[m[32m    type: type || 'get',[m
[32m+[m[32m    response(req, res) {[m
[32m+[m[32m      console.log('request invoke:' + req.path)[m
[32m+[m[32m      res.json(Mock.mock(respond instanceof Function ? respond(req, res) : respond))[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mmodule.exports = app => {[m
[32m+[m[32m  // parse app.body[m
[32m+[m[32m  // https://expressjs.com/en/4x/api.html#req.body[m
[32m+[m[32m  app.use(bodyParser.json())[m
[32m+[m[32m  app.use(bodyParser.urlencoded({[m
[32m+[m[32m    extended: true[m
[32m+[m[32m  }))[m
[32m+[m
[32m+[m[32m  const mockRoutes = registerRoutes(app)[m
[32m+[m[32m  var mockRoutesLength = mockRoutes.mockRoutesLength[m
[32m+[m[32m  var mockStartIndex = mockRoutes.mockStartIndex[m
[32m+[m
[32m+[m[32m  // watch files, hot reload mock server[m
[32m+[m[32m  chokidar.watch(mockDir, {[m
[32m+[m[32m    ignored: /mock-server/,[m
[32m+[m[32m    ignoreInitial: true[m
[32m+[m[32m  }).on('all', (event, path) => {[m
[32m+[m[32m    if (event === 'change' || event === 'add') {[m
[32m+[m[32m      try {[m
[32m+[m[32m        // remove mock routes stack[m
[32m+[m[32m        app._router.stack.splice(mockStartIndex, mockRoutesLength)[m
[32m+[m
[32m+[m[32m        // clear routes cache[m
[32m+[m[32m        unregisterRoutes()[m
[32m+[m
[32m+[m[32m        const mockRoutes = registerRoutes(app)[m
[32m+[m[32m        mockRoutesLength = mockRoutes.mockRoutesLength[m
[32m+[m[32m        mockStartIndex = mockRoutes.mockStartIndex[m
[32m+[m
[32m+[m[32m        console.log(chalk.magentaBright(`\n > Mock Server hot reload success! changed  ${path}`))[m
[32m+[m[32m      } catch (error) {[m
[32m+[m[32m        console.log(chalk.redBright(error))[m
[32m+[m[32m      }[m
[32m+[m[32m    }[m
[32m+[m[32m  })[m
[32m+[m[32m}[m
[1mdiff --git a/mock/table.js b/mock/table.js[m
[1mnew file mode 100644[m
[1mindex 0000000..bd0e013[m
[1m--- /dev/null[m
[1m+++ b/mock/table.js[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32mconst Mock = require('mockjs')[m
[32m+[m
[32m+[m[32mconst data = Mock.mock({[m
[32m+[m[32m  'items|30': [{[m
[32m+[m[32m    id: '@id',[m
[32m+[m[32m    title: '@sentence(10, 20)',[m
[32m+[m[32m    'status|1': ['published', 'draft', 'deleted'],[m
[32m+[m[32m    author: 'name',[m
[32m+[m[32m    display_time: '@datetime',[m
[32m+[m[32m    pageviews: '@integer(300, 5000)'[m
[32m+[m[32m  }][m
[32m+[m[32m})[m
[32m+[m
[32m+[m[32mmodule.exports = [[m
[32m+[m[32m  {[m
[32m+[m[32m    url: '/vue-admin-template/table/list',[m
[32m+[m[32m    type: 'get',[m
[32m+[m[32m    response: config => {[m
[32m+[m[32m      const items = data.items[m
[32m+[m[32m      return {[m
[32m+[m[32m        code: 20000,[m
[32m+[m[32m        data: {[m
[32m+[m[32m          total: items.length,[m
[32m+[m[32m          items: items[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m][m
[1mdiff --git a/mock/user.js b/mock/user.js[m
[1mnew file mode 100644[m
[1mindex 0000000..7555338[m
[1m--- /dev/null[m
[1m+++ b/mock/user.js[m
[36m@@ -0,0 +1,84 @@[m
[32m+[m
[32m+[m[32mconst tokens = {[m
[32m+[m[32m  admin: {[m
[32m+[m[32m    token: 'admin-token'[m
[32m+[m[32m  },[m
[32m+[m[32m  editor: {[m
[32m+[m[32m    token: 'editor-token'[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mconst users = {[m
[32m+[m[32m  'admin-token': {[m
[32m+[m[32m    roles: ['admin'],[m
[32m+[m[32m    introduction: 'I am a super administrator',[m
[32m+[m[32m    avatar: 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',[m
[32m+[m[32m    name: 'Super Admin'[m
[32m+[m[32m  },[m
[32m+[m[32m  'editor-token': {[m
[32m+[m[32m    roles: ['editor'],[m
[32m+[m[32m    introduction: 'I am an editor',[m
[32m+[m[32m    avatar: 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',[m
[32m+[m[32m    name: 'Normal Editor'[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mmodule.exports = [[m
[32m+[m[32m  // user login[m
[32m+[m[32m  {[m
[32m+[m[32m    url: '/vue-admin-template/user/login',[m
[32m+[m[32m    type: 'post',[m
[32m+[m[32m    response: config => {[m
[32m+[m[32m      const { username } = config.body[m
[32m+[m[32m      const token = tokens[username][m
[32m+[m
[32m+[m[32m      // mock error[m
[32m+[m[32m      if (!token) {[m
[32m+[m[32m        return {[m
[32m+[m[32m          code: 60204,[m
[32m+[m[32m          message: 'Account and password are incorrect.'[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m[32m      return {[m
[32m+[m[32m        code: 20000,[m
[32m+[m[32m        data: token[m
[32m+[m[32m      }[m
[32m+[m[32m    }[m
[32m+[m[32m  },[m
[32m+[m
[32m+[m[32m  // get user info[m
[32m+[m[32m  {[m
[32m+[m[32m    url: '/vue-admin-template/user/info\.*',[m
[32m+[m[32m    type: 'get',[m
[32m+[m[32m    response: config => {[m
[32m+[m[32m      const { token } = config.query[m
[32m+[m[32m      const info = users[token][m
[32m+[m
[32m+[m[32m      // mock error[m
[32m+[m[32m      if (!info) {[m
[32m+[m[32m        return {[m
[32m+[m[32m          code: 50008,[m
[32m+[m[32m          message: 'Login failed, unable to get user details.'[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m[32m      return {[m
[32m+[m[32m        code: 20000,[m
[32m+[m[32m        data: info[m
[32m+[m[32m      }[m
[32m+[m[32m    }[m
[32m+[m[32m  },[m
[32m+[m
[32m+[m[32m  // user logout[m
[32m+[m[32m  {[m
[32m+[m[32m    url: '/vue-admin-template/user/logout',[m
[32m+[m[32m    type: 'post',[m
[32m+[m[32m    response: _ => {[m
[32m+[m[32m      return {[m
[32m+[m[32m        code: 20000,[m
[32m+[m[32m        data: 'success'[m
[32m+[m[32m      }[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m][m
[1mdiff --git a/mock/utils.js b/mock/utils.js[m
[1mnew file mode 100644[m
[1mindex 0000000..95cc27d[m
[1m--- /dev/null[m
[1m+++ b/mock/utils.js[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32m/**[m
[32m+[m[32m * @param {string} url[m
[32m+[m[32m * @returns {Object}[m
[32m+[m[32m */[m
[32m+[m[32mfunction param2Obj(url) {[m
[32m+[m[32m  const search = decodeURIComponent(url.split('?')[1]).replace(/\+/g, ' ')[m
[32m+[m[32m  if (!search) {[m
[32m+[m[32m    return {}[m
[32m+[m[32m  }[m
[32m+[m[32m  const obj = {}[m
[32m+[m[32m  const searchArr = search.split('&')[m
[32m+[m[32m  searchArr.forEach(v => {[m
[32m+[m[32m    const index = v.indexOf('=')[m
[32m+[m[32m    if (index !== -1) {[m
[32m+[m[32m      const name = v.substring(0, index)[m
[32m+[m[32m      const val = v.substring(index + 1, v.length)[m
[32m+[m[32m      obj[name] = val[m
[32m+[m[32m    }[m
[32m+[m[32m  })[m
[32m+[m[32m  return obj[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mmodule.exports = {[m
[32m+[m[32m  param2Obj[m
[32m+[m[32m}[m
[1mdiff --git a/package.json b/package.json[m
[1mindex f0f40d1..9588cf0 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -3,7 +3,7 @@[m
   "version": "0.1.0",[m
   "private": true,[m
   "scripts": {[m
[31m-    "serve": "vue-cli-service serve",[m
[32m+[m[32m    "dev": "vue-cli-service serve",[m
     "build": "vue-cli-service build",[m
     "test:unit": "vue-cli-service test:unit",[m
     "test:e2e": "vue-cli-service test:e2e",[m
[36m@@ -11,6 +11,8 @@[m
   },[m
   "dependencies": {[m
     "core-js": "^3.6.5",[m
[32m+[m[32m    "js-cookie": "^2.2.1",[m
[32m+[m[32m    "normalize.css": "^8.0.1",[m
     "register-service-worker": "^1.7.1",[m
     "vue": "^2.6.11",[m
     "vue-router": "^3.2.0",[m
[36m@@ -27,10 +29,12 @@[m
     "@vue/cli-service": "~4.5.0",[m
     "@vue/eslint-config-prettier": "^6.0.0",[m
     "@vue/test-utils": "^1.0.3",[m
[32m+[m[32m    "autoprefixer": "^9.5.1",[m
     "babel-eslint": "^10.1.0",[m
     "eslint": "^6.7.2",[m
     "eslint-plugin-prettier": "^3.1.3",[m
     "eslint-plugin-vue": "^6.2.2",[m
[32m+[m[32m    "mockjs": "^1.1.0",[m
     "node-sass": "^4.12.0",[m
     "prettier": "^1.19.1",[m
     "sass-loader": "^8.0.2",[m
[36m@@ -43,13 +47,17 @@[m
     },[m
     "extends": [[m
       "plugin:vue/essential",[m
[31m-      "eslint:recommended",[m
[31m-      "@vue/prettier"[m
[32m+[m[32m      "eslint:recommended"[m
     ],[m
     "parserOptions": {[m
       "parser": "babel-eslint"[m
     },[m
[31m-    "rules": {},[m
[32m+[m[32m    "rules": {[m
[32m+[m[32m      "semi": [[m
[32m+[m[32m        "error",[m
[32m+[m[32m        "never"[m
[32m+[m[32m      ][m
[32m+[m[32m    },[m
     "overrides": [[m
       {[m
         "files": [[m
[1mdiff --git a/postcss.config.js b/postcss.config.js[m
[1mnew file mode 100644[m
[1mindex 0000000..b986bd9[m
[1m--- /dev/null[m
[1m+++ b/postcss.config.js[m
[36m@@ -0,0 +1,14 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-25 17:09:20[m
[32m+[m[32m * @LastEditTime: 2020-11-26 09:36:38[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description:[m[41m [m
[32m+[m[32m */[m
[32m+[m[32m// https://github.com/michael-ciniawsky/postcss-load-config[m
[32m+[m
[32m+[m[32mmodule.exports = {[m
[32m+[m[32m  'plugins': {[m
[32m+[m[32m    'autoprefixer': {} //处理css浏览器兼容（加指定前缀）[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[1mdiff --git a/src/App.vue b/src/App.vue[m
[1mindex 0228dd3..2fb768a 100644[m
[1m--- a/src/App.vue[m
[1m+++ b/src/App.vue[m
[36m@@ -1,8 +1,16 @@[m
[32m+[m[32m<!--[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-24 17:32:27[m
[32m+[m[32m * @LastEditTime: 2020-11-26 17:05:02[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description:[m[41m [m
[32m+[m[32m-->[m
 <template>[m
   <div id="app">[m
     <div id="nav">[m
       <router-link to="/">Home</router-link> |[m
[31m-      <router-link to="/about">About</router-link>[m
[32m+[m[32m      <router-link to="/about">About</router-link> |[m
[32m+[m[32m      <router-link to="/test1">test1</router-link>[m[41m [m
     </div>[m
     <router-view />[m
   </div>[m
[1mdiff --git a/src/assets/logo.png b/src/assets/images/logo.png[m
[1msimilarity index 100%[m
[1mrename from src/assets/logo.png[m
[1mrename to src/assets/images/logo.png[m
[1mdiff --git a/src/components/HelloWorld.vue b/src/components/HelloWorld.vue[m
[1mindex a9fc225..def1e6f 100644[m
[1m--- a/src/components/HelloWorld.vue[m
[1m+++ b/src/components/HelloWorld.vue[m
[36m@@ -131,8 +131,11 @@[m [mexport default {[m
   name: "HelloWorld",[m
   props: {[m
     msg: String[m
[32m+[m[32m  },[m
[32m+[m[32m  methods: {[m
[32m+[m[32m    asv() {}[m
   }[m
[31m-};[m
[32m+[m[32m}[m
 </script>[m
 [m
 <!-- Add "scoped" attribute to limit CSS to this component only -->[m
[1mdiff --git a/src/main.js b/src/main.js[m
[1mindex 246503d..439990c 100644[m
[1m--- a/src/main.js[m
[1m+++ b/src/main.js[m
[36m@@ -1,13 +1,22 @@[m
[31m-import Vue from "vue";[m
[31m-import App from "./App.vue";[m
[31m-import "./registerServiceWorker";[m
[31m-import router from "./router";[m
[31m-import store from "./store";[m
[32m+[m[32m/*[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-24 17:32:27[m
[32m+[m[32m * @LastEditTime: 2020-11-26 13:24:14[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description: .[m
[32m+[m[32m */[m
[32m+[m[32mimport Vue from "vue"[m
[32m+[m[32mimport 'normalize.css' // browser CSS resets[m
 [m
[31m-Vue.config.productionTip = false;[m
[32m+[m[32mimport App from "./App.vue"[m
[32m+[m[32mimport "./registerServiceWorker"[m
[32m+[m[32mimport router from "./router"[m
[32m+[m[32mimport store from "./store"[m
[32m+[m
[32m+[m[32mVue.config.productionTip = false[m
 [m
 new Vue({[m
   router,[m
   store,[m
   render: h => h(App)[m
[31m-}).$mount("#app");[m
[32m+[m[32m}).$mount("#app")[m
[1mdiff --git a/src/registerServiceWorker.js b/src/registerServiceWorker.js[m
[1mindex 30b7895..0ebf471 100644[m
[1m--- a/src/registerServiceWorker.js[m
[1m+++ b/src/registerServiceWorker.js[m
[36m@@ -1,6 +1,13 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-24 17:32:27[m
[32m+[m[32m * @LastEditTime: 2020-11-26 14:37:49[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description:[m[41m [m
[32m+[m[32m */[m
 /* eslint-disable no-console */[m
 [m
[31m-import { register } from "register-service-worker";[m
[32m+[m[32mimport { register } from "register-service-worker"[m
 [m
 if (process.env.NODE_ENV === "production") {[m
   register(`${process.env.BASE_URL}service-worker.js`, {[m
[36m@@ -8,27 +15,27 @@[m [mif (process.env.NODE_ENV === "production") {[m
       console.log([m
         "App is being served from cache by a service worker.\n" +[m
           "For more details, visit https://goo.gl/AFskqB"[m
[31m-      );[m
[32m+[m[32m      )[m
     },[m
     registered() {[m
[31m-      console.log("Service worker has been registered.");[m
[32m+[m[32m      console.log("Service worker has been registered.")[m
     },[m
     cached() {[m
[31m-      console.log("Content has been cached for offline use.");[m
[32m+[m[32m      console.log("Content has been cached for offline use.")[m
     },[m
     updatefound() {[m
[31m-      console.log("New content is downloading.");[m
[32m+[m[32m      console.log("New content is downloading.")[m
     },[m
     updated() {[m
[31m-      console.log("New content is available; please refresh.");[m
[32m+[m[32m      console.log("New content is available; please refresh.")[m
     },[m
     offline() {[m
       console.log([m
         "No internet connection found. App is running in offline mode."[m
[31m-      );[m
[32m+[m[32m      )[m
     },[m
     error(error) {[m
[31m-      console.error("Error during service worker registration:", error);[m
[32m+[m[32m      console.error("Error during service worker registration:", error)[m
     }[m
[31m-  });[m
[32m+[m[32m  })[m
 }[m
[1mdiff --git a/src/router/index.js b/src/router/index.js[m
[1mindex daa6cee..b40bb07 100644[m
[1m--- a/src/router/index.js[m
[1m+++ b/src/router/index.js[m
[36m@@ -1,8 +1,15 @@[m
[31m-import Vue from "vue";[m
[31m-import VueRouter from "vue-router";[m
[31m-import Home from "../views/Home.vue";[m
[32m+[m[32m/*[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-24 17:32:27[m
[32m+[m[32m * @LastEditTime: 2020-11-26 17:04:54[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description:[m[41m [m
[32m+[m[32m */[m
[32m+[m[32mimport Vue from "vue"[m
[32m+[m[32mimport VueRouter from "vue-router"[m
[32m+[m[32mimport Home from "@/views/Home.vue"[m
 [m
[31m-Vue.use(VueRouter);[m
[32m+[m[32mVue.use(VueRouter)[m
 [m
 const routes = [[m
   {[m
[36m@@ -16,13 +23,17 @@[m [mconst routes = [[m
     // route level code-splitting[m
     // this generates a separate chunk (about.[hash].js) for this route[m
     // which is lazy-loaded when the route is visited.[m
[31m-    component: () =>[m
[31m-      import(/* webpackChunkName: "about" */ "../views/About.vue")[m
[32m+[m[32m    component: () => import(/* webpackChunkName: "about" */ "@/views/About.vue")[m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m    path: "/test1",[m
[32m+[m[32m    name: "test1",[m
[32m+[m[32m    component: () => import(/* webpackChunkName: "test1" */ "@/views/testPages/test1.vue")[m
   }[m
[31m-];[m
[32m+[m[32m][m
 [m
 const router = new VueRouter({[m
   routes[m
[31m-});[m
[32m+[m[32m})[m
 [m
[31m-export default router;[m
[32m+[m[32mexport default router[m
[1mdiff --git a/src/store/index.js b/src/store/index.js[m
[1mindex fb6015f..567b78c 100644[m
[1m--- a/src/store/index.js[m
[1m+++ b/src/store/index.js[m
[36m@@ -1,11 +1,18 @@[m
[31m-import Vue from "vue";[m
[31m-import Vuex from "vuex";[m
[32m+[m[32m/*[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-24 17:32:27[m
[32m+[m[32m * @LastEditTime: 2020-11-26 14:37:30[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description:[m
[32m+[m[32m */[m
[32m+[m[32mimport Vue from "vue"[m
[32m+[m[32mimport Vuex from "vuex"[m
 [m
[31m-Vue.use(Vuex);[m
[32m+[m[32mVue.use(Vuex)[m
 [m
 export default new Vuex.Store({[m
   state: {},[m
   mutations: {},[m
   actions: {},[m
   modules: {}[m
[31m-});[m
[32m+[m[32m})[m
[1mdiff --git a/src/views/Home.vue b/src/views/Home.vue[m
[1mindex 191049e..71da056 100644[m
[1m--- a/src/views/Home.vue[m
[1m+++ b/src/views/Home.vue[m
[36m@@ -1,18 +1,25 @@[m
[32m+[m[32m<!--[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-24 17:32:27[m
[32m+[m[32m * @LastEditTime: 2020-11-26 17:38:42[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description:[m[41m [m
[32m+[m[32m-->[m
 <template>[m
   <div class="home">[m
[31m-    <img alt="Vue logo" src="../assets/logo.png" />[m
[32m+[m[32m    <img alt="Vue logo" src="@src/assets/images/logo.png" />[m
     <HelloWorld msg="Welcome to Your Vue.js App" />[m
   </div>[m
 </template>[m
 [m
 <script>[m
 // @ is an alias to /src[m
[31m-import HelloWorld from "@/components/HelloWorld.vue";[m
[32m+[m[32mimport HelloWorld from "@/components/HelloWorld.vue"[m
 [m
 export default {[m
   name: "Home",[m
   components: {[m
     HelloWorld[m
   }[m
[31m-};[m
[32m+[m[32m}[m
 </script>[m
[1mdiff --git a/src/views/testPages/test1.vue b/src/views/testPages/test1.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..66705be[m
[1m--- /dev/null[m
[1m+++ b/src/views/testPages/test1.vue[m
[36m@@ -0,0 +1,34 @@[m
[32m+[m[32m<!--[m
[32m+[m[32m * @Author: 刘海哥[m
[32m+[m[32m * @Date: 2020-11-26 14:39:01[m
[32m+[m[32m * @LastEditTime: 2020-11-26 17:05:30[m
[32m+[m[32m * @LastEditors: 刘海哥[m
[32m+[m[32m * @Description:[m[41m [m
[32m+[m[32m-->[m
[32m+[m
[32m+[m[32m<template>[m
[32m+[m[32m    <div class="test-page">[m
[32m+[m[32m        this is a test page[m
[32m+[m[32m    </div>[m
[32m+[m[32m</template>[m
[32m+[m
[32m+[m[32m<script>[m
[32m+[m[32mexport default {[m
[32m+[m[32m    name: 'testPage',[m
[32m+[m[32m    data() {[m
[32m+[m[32m        return {}[m
[32m+[m[32m    },[m
[32m+[m[32m    mounted() {[m
[32m+[m[32m        console.log('this is a test page')[m
[32m+[m[32m    },[m
[32m+[m[32m    methods: {}[m
[32m+[m[32m}[m
[32m+[m[32m</script>[m
[32m+[m
[32m+[m[32m<style scoped lang='scss'>[m
[32m+[m[32m.test-page {[m
[32m+[m[32m    width: 100vw;[m
[32m+[m[32m    height: 100vh;[m
[32m+[m[32m    background-image: linear-gradient(to right, #fad7a1, #e96d71);[m
[32m+[m[32m}[m
[32m+[m[32m</style>[m
\ No newline at end of file[m
[1mdiff --git a/vue.config.js b/vue.config.js[m
[1mnew file mode 100644[m
[1mindex 0000000..dc071ad[m
[1m--- /dev/null[m
[1m+++ b/vue.config.js[m
[36m@@ -0,0 +1,106 @@[m
[32m+[m[32m'use strict'[m
[32m+[m