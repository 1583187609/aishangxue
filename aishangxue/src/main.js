import Vue from 'vue'
import router from './router'
import App from './App'
import ElementUI from 'element-ui';
import './assets/css/basic.css'
import 'element-ui/lib/theme-chalk/index.css';
import './assets/css/keyframes.css';
import store from './store/store.js';
import axios from 'axios';
import qs from "qs"; 

Vue.prototype.$axios = axios

Vue.use(ElementUI);
Vue.config.productionTip = false;

//限制输入的字符个数
Vue.prototype.$limitLength=function(e,max){
	let valLength=e.target.value.length;
	if(valLength>max){
		this.$message.error("不能超过"+max+"个字符！")
		e.target.value=e.target.value.substr(0,max);
	}
}
//计算发布时间是多久以前
Vue.prototype.$calAgoTime=function(publish_time){
	let currentTime=new Date().getTime()
	let publishTime=new Date(publish_time).getTime()
	let agoTime=Math.floor((currentTime-publishTime)/(1000*60))  //逝去的时间，单位：分钟
	if(agoTime<=5){
		agoTime="刚刚"
	}else if(agoTime<60){
		agoTime=agoTime+"分钟前"
	}else{
		agoTime=Math.floor(agoTime/60)
		if(agoTime<24){   //一天之内
			agoTime=agoTime+"小时前"
		}else if(agoTime<24*7){   //7天之内
			agoTime=Math.floor(agoTime/24);
			agoTime=agoTime+"天前";
		}else{
			agoTime=new Date(publish_time).toLocaleDateString().replace(/\//g, "-");
		}
	}
	return agoTime;
}

Vue.directive('drag',{   //拖着盒子移动
	bind: function (ele) {
		let dratArea=ele.querySelector(".drag-area")
		dratArea.onmousedown = (e) => {
			let disX = e.clientX - ele.offsetLeft;
			let disY = e.clientY - ele.offsetTop;
			document.onmousemove = (e)=>{
				let left = e.clientX - disX;    
				let top = e.clientY - disY;
				ele.style.left = left + 'px';
				ele.style.top = top + 'px';
			}
			document.onmouseup = (e) => {
				document.onmousemove = null;
				document.onmouseup = null;
			}
		}
	}
});

new Vue({
  el: '#app',
	data:{
		
		
	},
	methods:{
		
	},
	mounted() {
		let that=this;
		if(document.querySelector("#main-nav")){
			this.$store.state.rem=document.querySelector("#main-nav").offsetHeight/3;
		}
		//自动登录
		this.$axios.post('http://localhost:81/autoLogin',qs.stringify({
				number:1010,
				pwd:123456
			}))
			.then(function (response) {
				console.log("当前登录用户信息：",response.data)
				that.$store.state.isLogin=true;
				that.$store.state.loginUserInfo=response.data[0];
			})
			.catch(function (error) {
				console.log(error);
			});
	},
    router,
    store,
    components: { App },
    template: '<App/>',
	render: h => h(App)
})

//路由发生变化修改页面title
router.beforeEach((to, from, next) => {
  if (to.meta.title) {
    document.title=to.meta.title;
  }
  next()
});