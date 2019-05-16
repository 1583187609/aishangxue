import Vue from 'vue'
import Router from 'vue-router'
//home
import Home from "../views/Home.vue"
//show
import Show from "../views/Show.vue"
//others
import AboutMe from "../views/AboutMe.vue"
import Publish from "../views/Publish.vue"
import Shop from "../views/Shop.vue"
import Surround from "../views/Surround.vue"
// import Feedback from "../views/Feedback.vue"
import LoginRegist from "../views/LoginRegist.vue"
//服务器端组件
import Manage from "../../server/Manage.vue"
import AdminLogin from "../../server/shows/Login.vue"
import UserAnaly from "../../server/shows/UserAnaly.vue"
import InfoAnaly from "../../server/shows/InfoAnaly.vue"
import AddInfo from "../../server/shows/AddInfo.vue"
import QueryInfo from "../../server/shows/QueryInfo.vue"
import AddUser from "../../server/shows/AddUser.vue"
import QueryUser from "../../server/shows/QueryUser.vue"
import AddAdv from "../../server/shows/AddAdv.vue"
import QueryAdv from "../../server/shows/QueryAdv.vue"
import AddGoods from "../../server/shows/AddGoods.vue"
import QueryGoods from "../../server/shows/QueryGoods.vue"
import AddChat from "../../server/shows/AddChat.vue"
import QueryChat from "../../server/shows/QueryChat.vue"
import MyInfo from "../../server/shows/MyInfo.vue"
import Recycle from "../../server/shows/Recycle.vue"
import Test from "../views/Test.vue"

import Input from "../views/Input.vue"


Vue.use(Router)

export default new Router({
  routes: [
		{
		  path: '/input',
		  name: 'Input',
		  component: Input,
			meta:{
			  title:"input组件开发"
			}
		},
    {
      path: '/',
      name: 'Home',
      component: Home,
			meta:{
			  title:"爱尚学首页"
			}
    },
		{
		  path: '/show',
		  name: 'Show',
		  component: Show
		},
		{
		  path: '/aboutme',
		  name: 'AboutMe',
		  component: AboutMe,
			meta:{
			  title:"个人中心"
			}
		},
		{
		  path: '/publish',
		  name: 'Publish',
		  component: Publish,
			meta:{
			  title:"发布"
			}
		},
		{
		  path: '/shop',
		  name: 'Shop',
		  component: Shop,
			meta:{
			  title:"商城"
			}
		},
		{
		  path: '/surround',
		  name: 'Surround',
		  component: Surround,
			meta:{
			  title:"周边"
			}
		},
// 		{
// 		  path: '/feedback',
// 		  name: 'Feedback',
// 		  component: Feedback,
// 			meta:{
// 			  title:"反馈"
// 			}
// 		},
		{
		  path: '/login_regist',
		  name: 'LoginRegist',
		  component: LoginRegist,
			meta:{
			  title:"登录与注册"
			}
		},
		/*****************后台路由******************/
		{
		  path: '/server',
			name: 'AdminLogin',
		  component: AdminLogin,
			meta:{
			  title:"管理员登录"
			},
		},
		{
		  path: '/manage',
		  name: 'Manage',
		  component: Manage,
			meta:{
			  title:"后台管理中心"
			},
			children: [
        {
          path: 'useranaly',
          component: UserAnaly
        },
				{
				  path: 'infoanaly',
				  component: InfoAnaly
				},
				{
				  path: 'addinfo',
				  component: AddInfo
				},
				{
				  path: 'queryinfo',
				  component: QueryInfo
				},
				{
				  path: 'recycle',
				  component: Recycle
				},
				{
				  path: 'adduser',
				  component: AddUser
				},
				{
				  path: 'queryuser',
				  component: QueryUser
				},
				{
				  path: 'addadv',
				  component: AddAdv
				},
				{
				  path: 'queryadv',
				  component: QueryAdv
				},
				{
				  path: 'addgoods',
				  component: AddGoods
				},
				{
				  path: 'querygoods',
				  component: QueryGoods
				},
				{
				  path: 'addchat',
				  component: AddChat
				},
				{
				  path: 'querychat',
				  component: QueryChat
				},
				{
				  path: 'myinfo',
				  component: MyInfo
				}
      ]
		},
		{
		  path: '/test',
		  name: 'Test',
		  component: Test,
			meta:{
			  title:"测试页面"
			}
		}
  ]
})
