<template>
	<el-row class="secondary-nav">
		<el-col :span="6">
		  <el-menu mode="horizontal" class="left-nav">
			<el-menu-item><router-link to="/">请登录</router-link></el-menu-item>
			<el-menu-item><router-link to="/">免费注册</router-link></el-menu-item>
		  </el-menu>
		</el-col>
		<el-col :span="18">
			<el-menu mode="horizontal" class="right-nav">
			  <el-menu-item>导航</el-menu-item>
			  <el-menu-item><router-link to="/feedback">反馈</router-link></el-menu-item>
			  <el-menu-item><router-link to="/surround">周边</router-link></el-menu-item>
			  <el-menu-item><router-link to="/shop">商城</router-link></el-menu-item>
			  <el-menu-item><router-link to="/publish">发布</router-link></el-menu-item>
			  <el-menu-item><router-link to="/aboutme">我的</router-link></el-menu-item>
			</el-menu>
		</el-col>
	</el-row>
</template>

<script>
	export default {
		data: function() {
			return {
				
			};
		}
	}
</script>
	
<style>
	.secondary-nav{
		background: #ECF5FF;
	}
	.secondary-nav .el-menu{
		background: transparent;
	}
	.secondary-nav .el-menu-item{
		color: #666;
		height: 2.14rem;
		padding: 0 1rem;
		line-height: 2.14rem;
	}
	.secondary-nav .left-nav .el-menu-item:first-child{
		margin-left: 2.5rem;
	}
	.secondary-nav .right-nav .el-menu-item:first-child{
		margin-right: 2.5rem;
	}
	.secondary-nav .right-nav .el-menu-item{
		float: right;
	}
</style>
