<template>
	<div id="home">
		<el-row>
			<el-col :span="7"><img src="../assets/img/logo.png" class="logo" /></el-col>
			<el-col :span="10" :push="2">
				<el-input placeholder="请输入内容" class="home-search">
					<el-button slot="append" icon="el-icon-search"></el-button>
				</el-input>
			</el-col>
		</el-row>
		<main-nav></main-nav>
		<el-row class="wrap banner">
		  <el-col :span="24">
			  <el-carousel type="card" height="460px">
				<el-carousel-item v-for="item in 6" :key="item">
				  <h3>{{ item }}</h3>
				</el-carousel-item>
			  </el-carousel>
		  </el-col>
		  <!-- <el-col :span="6"> -->
			<!-- <el-row class="user-tab">
				<el-row class="label">
					<el-col :span="12">
						<el-tooltip content="用户类型" placement="bottom-end">
							<router-link to="/">普通用户</router-link>
						</el-tooltip>
					</el-col>
					<el-col :span="12"style="text-align: right;">
						<el-tooltip content="人气指数" placement="bottom-end">
							<router-link to="/">☆☆☆☆☆</router-link>
						</el-tooltip>
					</el-col>
				</el-row>
				<el-row>
					<router-link to="/" class="head-img-box"><img src="../assets/img/user_touxiang.jpg" alt="用户头像" /></router-link>
				</el-row>
				<el-row class="nickname">用户昵称（未登录）</el-row>
				<el-row class="user-about">
					<ul>
						<li><router-link to="/">关注<br /><b>12</b></router-link></li>
						<li><router-link to="/">粉丝<br /><b>32</b></router-link></li>
						<li><router-link to="/">收藏<br /><b>12</b></router-link></li>
						<li><router-link to="/">发布<br /><b>12</b></router-link></li>
						<li><router-link to="/">与我相关<br /><b>12</b></router-link></li>
					</ul>
				</el-row>
				<el-row class="others-login">
					<fieldset>
						<legend>其他登录方式</legend>
						<ul>
							<li><router-link to="/"><img src="../assets/img/login_way_1.jpg" /></router-link></li>
							<li><router-link to="/"><img src="../assets/img/login_way_2.jpg" /></router-link></li>
							<li><router-link to="/"><img src="../assets/img/login_way_3.jpg" /></router-link></li>
						</ul>
					</fieldset>
				</el-row>
			</el-row> -->
		  <!-- </el-col> -->
		</el-row>
		<div class="wrap asx-produce">
			<el-row id="welcome">
				<el-col :span="7" class="left">消息推送消息推送消息推送消息推送消息推送消息推送消息推送消息推送消息推送消息推送</el-col>
				<el-col :span="10"><marquee class="mid">欢迎来到爱尚学，在这里的所有资源都是免费的！</marquee></el-col>
				<el-col :span="7" class="right">书是人类进步的阶梯，但阶梯不只是书籍。（单行垂直居中显示，也可双行显示）</el-col>
			</el-row>
			<el-row>
				<el-col :span="24">
					<fieldset>
						<legend>三十秒了解爱尚学</legend>
					</fieldset>
				</el-col>
			</el-row>
			<el-row>
				<el-col :span="24">
					<fieldset>
						<legend>三分钟熟悉爱尚学</legend>
					</fieldset>
				</el-col>
			</el-row>
			<el-row>
				<el-col :span="24">
					<fieldset>
						<legend>爱尚学之“学”的奥义</legend>
					</fieldset>
				</el-col>
			</el-row>
		</div>
	</div>
</template>

<script>
	import MainNav from "../components/MainNav.vue"
	export default {
		components:{
			MainNav
		},
		data:function(){
			return {
				
			}
		},
		mounted(){
			
		}
	}
</script>

<style scoped>
	.wrap{
		margin-top: 0;
	}
	#home .logo{
		display: block;
		margin: 0 auto;
		height: 5.7rem;
	}
	.home-search{
		font-size: 1.14rem;
		margin-top: 1.42rem;
	}
	.home-search input{
		height: 3rem;
	}
	.home-search .el-button{
		font-size: 1.71rem;
	}
	#home .banner{
		background: -webkit-linear-gradient(rgba(200,200,200,.1) 40%, rgba(200,200,200,.4) 80%, rgba(150,150,150,.8) 99%); 
		background: -o-linear-gradient(rgba(200,200,200,.1) 40%, rgba(200,200,200,.4) 80%, rgba(150,150,150,.8) 99%); 
		background: -moz-linear-gradient(rgba(200,200,200,.1) 40%, rgba(200,200,200,.4) 80%, rgba(150,150,150,.8) 99%); 
		background:linear-gradient(rgba(200,200,200,.1) 40%, rgba(200,200,200,.4) 80%, rgba(150,150,150,.8) 99%);
		margin-bottom: 10px;
	}
	#home .el-carousel{
		padding: 1.42rem 0 1.42rem;
		width: 95%;
		margin: 0 auto;
	}
	#home .el-carousel__item{
		border: 2px outset #ccc;
		border-radius: .71rem;
		box-shadow: 0 .33rem 1rem 0 #888;
	}
	#home .el-carousel__item:nth-child(2n) {
		background-color: #99a9bf;
	}
	#home .el-carousel__item:nth-child(2n+1) {
		background-color: #d3dce6;
	}
	#home .el-carousel__indicator{
		margin-top: .71rem;
	}
	#home .el-carousel__button{
		height: 0.5rem;
		border-radius: 0.25rem;
		background: #666;
	}
	/* #home .user-tab{
		height: 21.5rem;
		width: 90%;
		height: 25rem;
		margin: 1rem auto;
		border: 2px solid #ccc;
		border-radius: 0.66rem;
		background: rgba(200,200,200,0);
	}
	#home .head-img-box{
		display: block;
		height: 5rem;
		width: 5rem;
		border-radius: 50%;
		margin: .66rem auto 0;
		border: 1px solid #ccc;
		overflow: hidden;
	}
	#home .head-img-box img{
		height: 100%;
		width: 100%;
	}
	#home .nickname{
		text-align: center;
		font: 600 1.28rem/2.14rem "微软雅黑";
	}
	#home .user-about ul{
		display: flex;
		justify-content: space-around;
	}
	#home .user-about li{
		text-align: center;
	}
	.others-login fieldset{
		border: none;
		border-top: 1px solid #aaa;
	}
	.others-login legend{
		margin: 0 auto;
	}
	.others-login ul{
		display: flex;
		justify-content: space-around;
	}
	.others-login li{
		height: 3.57rem;
		width: 3.57rem;
		border-radius: 6px;
		overflow: hidden;
	}
	.others-login li img{
		height: 100%;
		width: 100%;
	} */
	#welcome{
		height: 3rem;
		background: #C6E2FF !important;
	}
	#welcome .left,#welcome .right{
		padding: 0 1em;
		font: normal .93rem/1.5rem "微软雅黑";
		box-sizing: border-box;
	}
	#welcome .mid{
		height: 3rem;
		font: 500 1.43rem/3rem "微软雅黑";
		padding: 0 .7rem;
		background: #53A8FF;
	}
	.asx-produce fieldset{
		border-radius: .71rem;
		margin: 1.43rem auto;
		padding: 0.71rem 0;
		border: 1px solid #ccc;
	}
	.asx-produce legend{
		display: inline-block;
		height: 2.2rem;
		padding: 0 1.43rem;
		margin-left: 1rem;
		border-radius: .5rem;
		font: 700 1.14rem/2.2rem "微软雅黑";
		background-color: #09f;
	}
</style>
