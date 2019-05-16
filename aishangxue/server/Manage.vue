<template>
	<div id="manage">
		<el-row class="header">
		    <el-col :span="5">
			 <h1><router-link to="/manage/myinfo" class="rotate-infinite"></router-link>后台管理中心</h1>
		    </el-col>
		    <el-col :span="19">
			    <router-link to="/" class="bg-green"><i class="icon-home"></i> 前台首页</router-link>
			    <!-- <router-link to="/" class="bg-blue"><i class="icon-wrench"></i> 清除缓存</router-link> -->
			    <router-link to="/server" class="bg-red"><i class="icon-power-off"></i> 退出登录</router-link>
				<em>欢迎您，001号管理员（别样的感动）</em>
			</el-col>
		</el-row>
		<div class="menu" @click="foldMenuItem">
		  <div class="menu-list"><strong><i class="icon-list"></i> 菜单列表</strong></div>
		  <h2><i>▶</i>数据分析</h2>
		  <ul>
			<li><router-link to="/manage/useranaly" @click.native="changePath('数据分析','用户分析')">用户分析</router-link></li>
			<li><router-link to="/manage/infoanaly" @click.native="changePath('数据分析','信息分析')">信息分析</router-link></li>
		  </ul>   
		  <h2><i>▶</i>信息管理</h2>
		  <ul>
			<li><router-link to="/manage/addinfo" @click.native="changePath('信息管理','添加信息')">添加信息</router-link></li>
			<li><router-link to="/manage/queryinfo" @click.native="changePath('信息管理','查询信息')">查询信息</router-link></li>
		  </ul>  
		  <h2><i>▶</i>用户管理</h2>
		  <ul>
			<li><router-link to="/manage/adduser" @click.native="changePath('用户管理','添加用户')">添加用户</router-link></li>
			<li><router-link to="/manage/queryuser" @click.native="changePath('用户管理','查询用户')">查询用户</router-link></li>
		  </ul>
		 <!-- <h2><i>▶</i>商品管理</h2>
		  <ul>
			<li><router-link to="/manage/addgoods" @click.native="changePath('商品管理','添加商品')">添加商品</router-link></li>
			<li><router-link to="/manage/querygoods" @click.native="changePath('商品管理','查询商品')">查询商品</router-link></li>
		  </ul> -->
		  <h2><i>▶</i>广告管理</h2>
		  <ul>
			<li><router-link to="/manage/addadv" @click.native="changePath('广告管理','添加广告')">添加广告</router-link></li>
			<li><router-link to="/manage/queryadv" @click.native="changePath('广告管理','查询广告')">查询广告</router-link></li>
		  </ul>
		  <h2><i>▶</i>聊天管理</h2>
		  <ul>
			<li><router-link to="/manage/addchat" @click.native="changePath('聊天管理','添加聊天')">添加聊天</router-link></li>
			<li><router-link to="/manage/querychat" @click.native="changePath('聊天管理','查询聊天')">查询聊天</router-link></li>
		  </ul>
		 <!-- <h2><i>▶</i>个人中心</h2>
		  <ul>
			<li><router-link to="/manage/myinfo" @click.native="changePath('个人中心','我的资料')">我的资料</router-link></li>
		  </ul> -->
		  <h2><i>▶</i>回收站</h2>
		  <ul>
		   <li><router-link to="/manage/recycle" @click.native="changePath('回收站','回收站列表1')">回收站列表1</router-link></li>
		   <li><router-link to="/manage/recycle" @click.native="changePath('回收站','回收站列表2')">回收站列表2</router-link></li>
		  </ul>
		</div>
		<ul class="nav clear">
			<li><i class="icon-home"></i> 首页</li>
			<li>{{path1}}</li>
			<li class="separate-li">/</li>
			<li>{{path2}}</li>
		</ul>
		<div class="show">
		  <router-view />
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				path1:"数据分析",
				path2:"用户分析"
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
			changePath(path1,path2){
				this.path1=path1;
				this.path2=path2;
			}
		}
	}
</script>

<style scoped>
	@import "./FontAwesome.css";
	#manage{
		min-width: 1160px;
	}
	.header{
		height: 70px;
		background: url(img/admin_login_bg.jpg);
	}
	.header .el-col{
		height: 100%;
	}
	.header h1{
		color: #fff;
		padding: 0 10px;
		height: 50px;
		margin-top: 10px;
	}
	.header h1 a{
		vertical-align: middle;
		display: inline-block;
		height: 50px;
		width: 50px;
		margin: 0 10px;
		border-radius: 50%;
		overflow: hidden;
		background: url(img/admin_head_img.jpg) no-repeat 0 0/100%;
	}
	.header .el-col:nth-of-type(2){
		line-height: 70px;
	}
	.header [class^="bg"]{
		color: #fff;
		font-size: 14px;
		text-align: center;
		line-height: 34px;
		display: inline-block;
		height: 34px;
		width: 96px;
		border-radius: 4px;
	}
	.header em{
		margin-top: 15px;
		margin-right: 30px;
		float: right;
	}
	.bg-green{
		background-color:#2c7;
	}
	.bg-green:hover{
		background-color:#5d8;
	}
	.bg-blue{
		background-color:#0ae;
	}
	.bg-blue:hover{
		background-color:#03b6fd;
	}
	.bg-red{
		background-color:#EE3232;
	}
	.bg-red:hover{
		background-color:#f00;
	}
	.menu{
		position: absolute;
		width: 180px;
		top: 70px;
		bottom: 0;
		left: 0;
		padding-bottom: 1rem;
		overflow: auto;
		background: #F2F9FD;
	}
	.menu-list{
		color:#FFF; 
		font-size:16px; 
		font-weight: 900;
		height:50px; 
		line-height:50px;
		text-indent: .5rem;
		background:url(img/admin_login_bg.jpg) no-repeat 0 -1000px;
	}
	.menu h2{
		cursor: pointer;
		color: #333;
		font-weight: 700;
		margin: 1px 0 0;
		padding: 5px 22px;
		font-size: 15px;
		background: #e1e8ec;
	}
	.menu h2 i{
		margin-right: .2em;
		font-style: normal;
	}
	.menu ul{
		display: none;
		font-size: 14px;
		padding-left: 38px;
	}
	.menu ul li{
		height: 28px;
		line-height: 28px;
	}
	.nav{
		font-size: 15px;
		height: 40px;
		line-height: 40px;
		padding: 0 20px;
		margin-left: 180px;
		background: #F2F9FD;
	}
	.nav li{
		float: left;
	}
	.nav li:first-child{
		margin-right: 1em;
	}
	.nav .separate-li{
		margin: 0 5px;
	}
	.show{
		position: absolute;
		left: 180px;
		top: 110px;
		right: 0;
		bottom: 0;
		min-width: 984px;
		padding: 12px 15px 12px 20px;
		border: 1px solid #79BBFF;
		border-right: 0;
		border-bottom: 0;
		overflow: auto scroll;
		background: #fff;
	}
	
</style>
