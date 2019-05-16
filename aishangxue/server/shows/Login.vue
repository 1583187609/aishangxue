<template>
	<el-row id="admin-login">
		<el-col :span="7" id="form-box" class="bounce-in">
			<h1>后台管理中心</h1>
			<form action="index.html" method="post">
				<label>
					<i id="num-icon"></i>
					<input type="text" class="text-indent-50"  name="num" placeholder="登录账号" />
					<span>请填写账号</span>
				</label>
				<label>
					<i id="pwd-icon"></i>
					<input type="password" class="text-indent-50" name="pwd" placeholder="登录密码" />
					<span>请填写密码</span>
				</label>
				<div class="code-box">
					<label>
						<input type="text" class="code-inp" name="code" placeholder="填写右侧的验证码" />
						<span>请填写右侧的验证码</span>
					</label>
					<img src="" class="code-img" alt="验证码获取失败">  
				</div>
				<label>
					<input type="submit" value="登录">
				</label>
			</form> 
		</el-col>
	</el-row>
</template>

<script>
	export default {
		components:{
			
		},
		data() {
			return {
				
			};
		}
	}
</script>

<style scoped>
	#admin-login{
		position:absolute;
		width:100%; 
		height:100%;  
		background: url(../img/admin_login_bg.jpg); 
	}
	#form-box{
		position: absolute;
		top: 50%;
		left: 50%;
		margin-top: -200px;
		margin-left: -185px;
		min-width: 390px;
		height: 400px;
		border-radius: 6px;
		background: rgba(255,255,255,.6);
	}
	#form-box h1{
		text-align: center;
		margin-bottom: 30px;
	}
	label{
		position: relative;
		display: block;
		width: 80%;
		margin: 0 auto;
		font-size: 0;
	}
	label i{
		position: absolute;
		left: 1px;
		top: 1px;
		display: inline-block;
		height: 46px;
		width: 50px;
		border-radius: 4px 0 0 4px;
	}
	label input{
		width: 100%;
		vertical-align: top;
		height: 44px;
		font-size: 18px;
		border: 1px solid #bbb;
		border-radius: 4px;
	}
	label span{
		color: red;
		display: inline-block;
		height: 25px;
		font-size: 14px;
		visibility: hidden;
	}
	.text-indent-50{
		text-indent: 50px;
	}
	#num-icon{
		background: url(../img/base_icon_1.png) no-repeat -242px -126px;
	}
	#pwd-icon{
		background: url(../img/base_icon_1.png) no-repeat -58px -126px;
	}
	.code-box{
		width: 80%;
		margin: 0 auto;
	}
	.code-box label{
		display: inline-block;
		width: 55%;
	}
	.code-inp{
		text-indent: .5em;
		width: 100%;
	}
	.code-img{
		cursor: pointer;
		float: right;
		font-size: 14px;
		line-height: 46px;
		width: 40%;
		height: 46px;
		border: 1px solid #ccc;
		border-radius: 4px;
	}
	[type="submit"]{
		color: #fff;
		border: none;
		margin-top: 10px;
		background:#08bbe1;
	}
</style>
