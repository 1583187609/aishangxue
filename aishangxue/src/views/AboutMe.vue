<template>
	<div id="about-me">
		<main-nav></main-nav>
		<div class="wrap">
			<div class="left" v-if="$store.state.isLogin">
				<div id="basic-tab">
					<el-tooltip content="用户类型" placement="bottom-end">
						<div id="title">普通用户</div>
					</el-tooltip>
					<el-tooltip content="本周人气指数" placement="bottom-end">
						<div id="index">★★☆☆☆</div>
					</el-tooltip>
					<div id="head-box">
						<img src="../assets/img/user_touxiang.jpg" />
					</div>
					<div id="nickname">别样的感动</div>
					<ul id="my-basic">
						<li @click="changePage('basicInfo','notice')">关注<br><span>12</span></li>
						<li @click="changePage('basicInfo','fans')">粉丝<br><span>12</span></li>
						<li @click="changePage('basicInfo','collect')">收藏<br><span>12</span></li>
						<li @click="changePage('basicInfo','publish')">发布<br><span>12</span></li>
						<li @click="changePage('basicInfo','weekVisited')">周访问<br><span>12</span></li>
					</ul>
					<div class="produce-me-box">  
					    <div class="tab-box clear">
							<button :class="produceMeTabVal=='personal'?'produceMeActiveTab':''" @click="produceMeTabVal='personal'">个人说明</button>
							<button :class="produceMeTabVal=='official'?'produceMeActiveTab':''" @click="produceMeTabVal='official'">官方说明</button>
						</div>
						<div class="cont-box" v-show="produceMeTabVal=='personal'">
							这是个人说明这是个人说明这是个人说明这是个人说明这是个人说明这是个人说明这是个人说明这是个人说明这是个人说明这是个人说明
						</div>  
						<div class="cont-box" v-show="produceMeTabVal=='official'">
							这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明这是官方说明
						</div>
					</div>  
				</div>
				<div id="details-info" @click="foldMenuItem">
					<div class="hint-message clear">
						<i class="el-icon-bell"></i>
						<ul class="message-ul">
							<li @click="changePage('messageInform','message1')">消息通知1消息通知1消息通知1消息通知1消息通知1消息通知1消息通知1消息通知1消息通知1消息通知1</li>
							<li @click="changePage('messageInform','message2')">消息通知2</li>
							<li @click="changePage('messageInform','message3')">消息通知3</li>
						</ul>
					</div>
					<h2 class="first-menu"><span>▼</span>每日任务(4)</h2>
					<ul class="fake-second-menu" style="max-height: 10rem;overflow: auto;">
						<li @click="changePage('dayTask','task1')">艾滋病知识答卷等你来填</li>
						<li @click="changePage('dayTask','task2')">这个五一去哪儿？问卷调查</li>
						<li @click="changePage('dayTask','task3')">紧急电话知识答卷</li>
					</ul>
					<!-- <h2 class="first-menu"><span>▼</span>我的钱包</h2>
					<ul class="fake-second-menu my-wallet-ul">
						<li><b>余额：</b><span>0.00</span>元</li>
						<li><b>购物点：</b><span>1000</span>点</li>
						<li><b>购物券：</b><span>100</span>元</li>
					</ul> -->
					<h2 class="first-menu"><span>▶</span>我的资料<button @click="changePage('editInfo')">编辑</button></h2>
					<ul class="fake-second-menu my-info-ul" style="display: none;">
						<li><b>账号：</b><span>1009</span></li>
						<li><b>昵称：</b><span>别样的感动</span></li>
						<li><b>称谓：</b><span>普通用户</span></li>
						<li><b>人气：</b><span>★★☆☆☆</span></li>
						<li><b>等级：</b><span>12级</span></li>
						<li><b>姓名：</b><span>范力川</span></li>
						<li><b>性别：</b><span>男</span></li>
						<li><b>职业：</b><span>web前端</span></li>
						<li><b>籍贯：</b><span>四川广安</span></li>
						<li><b>兴趣：</b><span>文字、音乐</span></li>
						<li><b>出生年月:</b><span>1996.03</span></li>
						<li><b>手机号码：</b><span>18483221518</span></li>
						<li><b>个人说明：</b><span>我喜欢文字类，喜欢研究文学，同样喜欢文学的朋友请记得点击加个关注哦！</span></li>
					</ul>
				</div>
				<fieldset class="middle-line"><legend>我是有底线的</legend></fieldset>
			</div>
			<div class="right" v-if="$store.state.isLogin">
				<me-basic-info v-if="currentPage=='basicInfo'" :classify="currentClassify"></me-basic-info>
				<me-message-inform v-else-if="currentPage=='messageInform'" :classify="currentClassify"></me-message-inform>
				<me-day-task v-else-if="currentPage=='dayTask'" :classify="currentClassify"></me-day-task>
				<me-my-wallet v-else-if="currentPage=='myWallet'" :classify="currentClassify"></me-my-wallet>
				<me-edit-info v-else-if="currentPage=='editInfo'"></me-edit-info>
			</div>
			<div id="hint-login" v-if="!$store.state.isLogin">
				<strong>您还没有登录，不配拥有个人中心！</strong>
				<router-link to="login_regist" @click.native="goLogin">去登录</router-link>
			</div>
		</div>
	</div>
</template>

<script>
	import MainNav from "../components/MainNav.vue"
	import MeBasicInfo from "../components/MeBasicInfo.vue"
	import MeMessageInform from "../components/MeMessageInform.vue"
	import MeDayTask from "../components/MeDayTask.vue"
	import MeEditInfo from "../components/MeEditInfo.vue"
	export default {
		components:{
			MainNav,MeBasicInfo,MeMessageInform,MeDayTask,MeEditInfo
		},
		data() {
			return {
				produceMeTabVal:"personal",
				currentPage:"basicInfo",
				currentClassify:"notice",
				currentPosition:"关注",
			};
		},
		methods:{
			foldMenuItem(e){
				let currentElement=e.target;
				let nextElement=currentElement.nextElementSibling;
				if(currentElement.localName=="h2"){     //关闭菜单子项
					this.menuType=currentElement.id;
					if(getComputedStyle(nextElement).display=="none"){
						currentElement.children[0].innerText="▼";
						nextElement.style.display="block";
					}else{
						currentElement.children[0].innerText="▶";
						nextElement.style.display="none";
					}
				}
			},
			changePage(page,classify){
				this.currentPage=page;
				this.currentClassify=classify;
			},
			goLogin(){
				this.$store.state.activeIndex="others4";
				this.$store.state.rememberPagePath="/aboutme";
			},
		}
	}
</script>

<style scoped>
	/******publick******/
	.wrap{
		
	}
	.left{
		float: left;
		width: 28%;
		height: 100%;
		overflow: auto;
		background: #eec;
	}
	#basic-tab{
		position: relative;
		padding-bottom: 1rem;
		background: #ddf;
	}
	#title,#index{
		position: absolute;
		top: .5rem;
		font-size: 1.1rem;
	}
	#title{
		left: 1rem;
	}
	#index{
		right: 1rem;
		font-size: 1.2rem;
	}
	#head-box{
		height: 10rem;
		text-align: center;
	}
	#head-box img{
		height: 8rem;
		width: 8rem;
		margin-top: 2rem;
		border-radius: 50%;
	}
	#head-box button{
		font-size: 5rem;
		height: 8rem;
		width: 8rem;
		margin-top: 2rem;
		border-radius: 50%;
		border: 0;
	}
	#nickname{
		text-align: center;
		font: 700 1.5rem/2.4rem "微软雅黑";
		margin: .5rem 0;
	}
	#my-basic{
		text-align: center;
	}
	#my-basic li{
		cursor: pointer;
		padding: 0 .5rem;
		font: 500 1.14rem/1.8rem "微软雅黑";
		display: inline-block;
	}
	.produce-me-box{
		margin: .5rem 1rem 0;
		border-radius: .5rem;
		border: 1px solid lightblue;
		background:#fff;
	}
	.tab-box{
		height: 2rem;
	}
	.tab-box button{
		color: #fff;
		float: left;
		height: 100%;
		width: 50%;
		font: 500 1.1rem/2rem "微软雅黑";
		border: none;
		background: lightblue;
	}
	.tab-box .produceMeActiveTab{
		color: #000;
		background: transparent;
	}
	.cont-box{
		line-height: 1.5rem;
		max-height: 7.5rem;
		overflow: auto;
		padding: .2rem .5rem;
	}
	#details-info{
		width: 100%;
		background: #eee;
	}
	.hint-message{
		line-height: 3rem;
		margin: 5px 0;
		padding: 0 1rem;
		background: lightblue;
	}
	.hint-message i{
		float: left;
		height: 2.6rem;
		width: 2.6rem;
		border-radius: 50%;
		line-height: 2.6rem;
		text-align: center;
		font-weight: 900;
		font-size: 1.6rem;
		margin: .7rem 0;
		border: 1px solid #ccc;
	}
	.message-ul{
		height: 4rem;
		margin-left: 3.6rem;
		overflow: hidden;
	}
	.message-ul li{
		cursor: pointer;
		font-size: 1.1rem;
		height: 3.2rem;
		margin: .4rem 0;
		line-height: 1.6rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.message-ul li:hover{
		text-decoration: underline;
	}
	#details-info h2{
		font: 700 1.1rem/2.4rem "微软雅黑";
		margin: 1px 0;
		padding: 0 .5rem;
		text-indent: .5rem;
	}
	#details-info h2 span{
		padding-right: .3rem;
	}
	#details-info h2 button{
		float: right;
		height: 1.6rem;
		line-height: 1.6rem;
		border: none;
		margin-top: .4rem;
		background: #aaf;
	}
	.fake-second-menu{
		padding: .4rem 0;
		padding-left: 1.5rem;
		background: #eee;
	}
	.fake-second-menu li{
		cursor: pointer;
		color: #444;
		text-indent: .3rem;
		font: normal 1rem/1.8rem "微软雅黑";
	}
	.my-wallet-ul li,.my-info-ul li{
		cursor: text;
	}
	.my-wallet-ul li:hover,.my-info-ul li:hover{
		cursor: text;
		background: none;
	}
	.right{
		float: left;
		width: 72%;
		height: 100%;
		padding: 0 2rem 0;
		overflow: auto;
		box-sizing: border-box;
	}
	#hint-login{
		position: absolute;
		left: 50%;
		top: 50%;
		width: 36rem;
		height: 15rem;
		text-align: center;
		transform: translate(-50%,-75%);
		border-radius: 1rem;
		background: #eec;
	}
	#hint-login strong,#hint-login a{
		display: inline-block;
	}
	#hint-login strong{
		color: #666;
		font: 600 2rem/8.5rem "微软雅黑";
	}
	#hint-login a{
		color: #fff;
		font: 800 1.3rem/3rem "微软雅黑";
		padding: .3rem 2rem;
		border-radius: .4rem;
		background: orange;
	}
</style>
