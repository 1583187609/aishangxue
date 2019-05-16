<template>
	<div id="login-regist">
		<main-nav></main-nav>
		<div class="wrap">
			<div id="theme">爱尚学——爱学习，崇尚学习！</div>
			<div id="router-box" class="clear">
				<button :class="currentPage=='login'?'active-btn':''" @click="choosePage('login')">登录</button>
				<button :class="currentPage=='regist'?'active-btn':''" @click="choosePage('regist')">注册</button>
			</div>
			<div id="login-regist-box">
				<form id="login" v-if="currentPage=='login'">
					<label>
						<i><img src="../assets/img/icon_user.png" /></i>
						<input name="tel" type="text" placeholder="爱尚账号/电话号码" v-model="telVal" @change="checkNumOrTel" />
					</label>
					<label>
						<i><img src="../assets/img/icon_pwd.png" /></i>
						<input name="pwd" type="pwd" placeholder="密码" v-model="pwdVal" @change="checkPwd" />
					</label>
					<label id="code-label" class="clear">
						<input id="code-inp" name="code" type="text" placeholder="验证码" v-model="codeVal"  />
						<img id="code-img" :src="codeImgSrc" @click="refreshCode" />
					</label>
					<label><input type="submit" value="登录" @click.prevent="userLogin" /></label>
					<div class="friend-link">忘记密码？<a href="#">获取帮助</a></div>
				</form>
				<form id="regist" v-if="currentPage=='regist'">
					<fieldset id="must-fill">
						<legend>必填</legend>
						<label>
							<i><img src="../assets/img/icon_user.png" /></i>
							<input type="text" name="nickname" placeholder="用户昵称,字符个数不能超过10个" v-model="registNameVal" @input="checkRegistName" />
						</label>
						<label>
							<i><img src="../assets/img/icon_pwd.png" /></i>
							<input type="pwd" name="pwd" placeholder="密码必须为6位,且只能为数字字母组合" v-model="registPwdVal" @change="checkRegistPwd" />
						</label>
						<label>
							<i><img src="../assets/img/icon_tel.png" /></i>
							<input type="pwd" name="tel" placeholder="必须是11位数的有效手机号码" v-model="registTelVal" @change="checkRegistTel" />
						</label>
						<label><input type="submit" value="注册" @click.prevent="userRegist" /></label>
						<div class="friend-link"><input type="checkbox" />我已阅读并同意<a href="#">用户注册协议</a></div>
					</fieldset>
					<fieldset id="select-fill">
						<legend>选填</legend>
						<div id="hint">填写以下信息将有助于匹配到您尽可能感兴趣的内容，同时重要信息可以设置对外保密。</div>
						<div class="secret cleart">
							<b>姓名：</b>
							<input name="name" type="text" v-model="userName">
							<label><input name="name_secret" type="checkbox" v-model="nameSecretVal"><span>保密</span></label>
						</div>
						<div class="secret clear">
							<b>性别：</b>
							<label><input type="radio" name="sex" v-model="userSex" value="1" /><span>男</span></label>
							<label><input type="radio" name="sex" v-model="userSex" value="2" /><span>女</span></label>
							<label><input name="sex_secret" type="checkbox" v-model="sexSecretVal"><span>保密</span></label>
						</div>
						<div class="secret clear">
							<b>籍贯：</b>
							<input name="native_place" type="text" placeholder="例如:四川广安" v-model="userNativePlace">
							<label><input name="native_place_secret" type="checkbox" v-model="nativePlaceSecretVal"><span>保密</span></label>
						</div>
						<div class="secret clear">
							<b>职业：</b>
							<input name="job" type="text" placeholder="例如:web前端" v-model="userJob">
							<label><input name="job_secret" type="checkbox" v-model="jobSecretVal"><span>保密</span></label>
						</div>
						<div class="secret clear">
							<b>兴趣：</b>
							<input name="hobby" type="text" placeholder="请用逗号隔开,例如:文字,音乐" v-model="userHobby">
							<label><input name="hobby_secret" type="checkbox" v-model="hobbySecretVal"><span>保密</span></label>
						</div>
						<div class="secret clear">
							<b>出生日期：</b>
							<input name="birthday" type="date" v-model="userBirthday">
							<label><input name="birthday_secret" type="checkbox" v-model="birthdaySecretVal"><span>保密</span></label>
						</div>
						<div class="secret">
							<b>个人说明：</b>
							<textarea name="produce" placeholder="介绍自己的作品方向……" v-model="userProduce"></textarea>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>

</template>
<script>
	import MainNav from "../components/MainNav.vue"
	import qs from 'qs'; //解决axios中以字符串发送数据的问题
	export default {
		components: {
			MainNav
		},
		data() {
			return {
				currentPage: "login",
				registNameVal: "测试账号",
				registPwdVal: "123456",
				registTelVal: "12345678901",
				userName: "用户1号",
				nameSecretVal: true,
				userSex: "2",
				sexSecretVal: true,
				userNativePlace: "四川广安",
				nativePlaceSecretVal: true,
				userJob: "Java",
				jobSecretVal: true,
				userHobby: "文字，音乐",
				hobbySecretVal: true,
				userBirthday: "2019-04-19",
				birthdaySecretVal: true,
				userProduce: "这是我随便说的内容，这次就这么多了，下次再补充。",
				telVal:"1009",
				pwdVal:"123456",
				codeVal:"",
				codeImgSrc:"http://localhost:81/getcode"
			}
		},
		methods: {
			choosePage(page) {
				this.currentPage = page;
			},
			//校验登录的爱尚账号或电话号码
			checkNumOrTel(){
				let regTel=/^[1-9]\d{3,10}$/;     //匹配4——11位数字
				if(!regTel.test(this.telVal)){   
					alert("请输入正确的爱尚账号或电话号码！\n若为爱尚账号，则必须大于等于4位;\n若为手机号码，则必须等于11位。")
				}
			},
			//校验登录密码
			checkPwd(){
				let reg = /^[a-zA-Z0-9]+$/;
				if (this.pwdVal.length != 6 && reg.test(this.pwdVal)) {
					alert("密码位数必须为6位！")
				} else if (this.pwdVal.length == 6 && !reg.test(this.pwdVal)) {
					alert("密码字符必须是纯数字或纯字母或数字与字母组合！")
				} else if (this.pwdVal.length != 6 && !reg.test(this.pwdVal)) {
					alert("密码位数必须为6位且\n密码字符必须是纯数字或纯字母或数字与字母组合！")
				}
			},
			//校验注册的用户昵称:昵称字符个数不能超过10个
			checkRegistName() {
				if (this.registNameVal.length > 10) {
					alert("昵称字符个数不能超过10个！")
				}
			},
			//校验注册密码:只能为6位数字或字母组合
			checkRegistPwd() {
				let reg = /^[a-zA-Z0-9]+$/;
				if (this.registPwdVal.length != 6 && reg.test(this.registPwdVal)) {
					alert("密码位数必须为6位！")
				} else if (this.registPwdVal.length == 6 && !reg.test(this.registPwdVal)) {
					alert("密码字符必须是纯数字或纯字母或数字与字母组合！")
				} else if (this.registPwdVal.length != 6 && !reg.test(this.registPwdVal)) {
					alert("密码位数必须为6位且\n密码字符必须是纯数字或纯字母或数字与字母组合！")
				}
			},
			//校验注册的电话号码:只能为11位纯数字电话号码
			checkRegistTel() {
				let reg = /^[1-9]\d{10}$/;
				if (!reg.test(this.registTelVal)) {
					alert("请输入11位有效手机电话号码")
				}
			},
			//用户注册
			userRegist(){
				if(this.registNameVal == "") {alert("请设置昵称")}
				else if(this.registPwdVal == "") {alert("请设置密码")} 
				else if(this.registTelVal == "") {alert("请设置电话号码")}
				else{
					this.$axios.post('http://localhost:81/userRegist', qs.stringify({
							nickname: this.registNameVal,
							pwd: this.registPwdVal,
							tel: this.registTelVal,
							name: this.userName,
							nameSecret: this.nameSecretVal,
							sex: this.userSex,
							sexSecret: this.sexSecretVal,
							native_place: this.userNativePlace,
							nativePlaceSecret: this.nativePlaceSecretVal,
							job: this.userJob,
							jobSecret: this.jobSecretVal,
							hobby: this.userHobby,
							hobbySecret: this.hobbySecretVal,
							birthday: this.userBirthday,
							birthdaySecret: this.birthdaySecretVal,
							produce: this.userProduce
						}))
						.then(function(response) {
							if (response.data == "This telnumber has been registed!") {
								alert("该电话号码已被注册！")
							} else if (response.data == "regist success!") {
								alert("注册成功！")
							}
						})
						.catch(function(error) {
							console.log(error);
						});
				  }
			},
			//刷新验证码
			refreshCode:function (){
			    this.codeImgSrc='http://localhost:81/getcode?_'+new Date();
			},
			//用户登录  检查是否有未填项  校验验证码
			userLogin:function(){
			 	let that=this;
			 	if(this.telVal==""){alert("请输入爱尚账号或电话号码")}
			 	else if(this.pwdVal==""){alert("请输入密码")}
			 	else if(this.codeVal==""){alert("请输入验证码")}
			 	else{
			 		this.$axios.post('http://localhost:81/userLogin',qs.stringify({
			 			tel:this.telVal,
			 			pwd:this.pwdVal,
			 			code:this.codeVal
			 		}))
			 		.then(function (response) {
			 			if(response.data.feedback=="name and passward not match!"){alert("账号和密码不匹配！\n您可能账号或密码输入错误！")}
			 			else if(response.data.feedback=="code err!"){alert("验证码输入错误！")}
			 			else if(response.data.feedback=="login success!"){
			 				that.$router.push({path:that.$store.state.rememberPagePath});
							that.$store.state.isLogin=true;
			 				that.$store.state.loginUserInfo=response.data.data[0];
							that.$notify({
								title: '登录成功',
								message: '欢迎您，'+that.$store.state.loginUserInfo.nickname
							});
							console.log(that.$store.state.loginUserInfo)
			 			}
			 		})
			 		.catch(function (error) {
			 			console.log(error);
			 		});
			 	}
			},
		}
	}
</script>

<style scoped>
	.wrap {
		background: url(../assets/img/login_regist_bg_1.jpg) no-repeat 0 0/100% auto;
	}
	#theme {
		color: red;
		display: inline-block;
		position: absolute;
		top: 4rem;
		left: 2.5rem;
		font: italic 900 2.8rem "华文行楷";
		border-bottom: 2px solid red;
	}
	#login-regist-box {
		position: absolute;
		right: 5rem;
		top: 5.5rem;
		max-height: 80%;
		width: 30rem;
		overflow: auto;
		border: 1px solid darkblue;
		border-top: none;
		background: #eef;
	}
	#router-box {
		position: absolute;
		right: 5rem;
		top: 2.5rem;
		height: 3rem;
		width: 30rem;
		border: 1px solid darkblue;
		border-bottom: none;
		background: blue;
	}
	#router-box button {
		color: #fff;
		float: left;
		height: 100%;
		width: 15rem;
		border: none;
		font: 600 1.3rem/3rem "微软雅黑";
		background: cadetblue;
	}
	#router-box .active-btn {
		color: darkblue;
		background: #eef;
	}
	#login {
		padding: 2rem 0;
	}
	fieldset {
		width: 25rem;
		margin: 1rem auto;
		padding-bottom: 1.5rem;
		box-sizing: border-box;
		border: 1px solid #ccc;
	}
	legend {
		color: #666;
		font-size: 1.2rem;
		padding: .3rem 1rem;
		border: 1px solid #ccc;
		border-radius: .5rem;
		background: lightblue;
	}
	#login label,#must-fill label {
		font-size: 0;
		width: 23rem;
		margin: 1rem auto;
		border: 1px solid #aaa;
		background: #ddd;
	}
	#login label i,#must-fill label i {
		vertical-align: top;
		display: inline-block;
		height: 2.8rem;
		width: 2.8rem;
	}
	#login label i img,#must-fill label i img {
		display: inline-block;
		height: 2.3rem;
		width: 2.3rem;
		margin: .3rem .25rem;
	}
	#login label input,#must-fill label input {
		font-size: 1.2rem;
		height: 2.8rem;
		width: 20.2rem;
		text-indent: .5rem;
		border: none;
	}
	#login #code-label {
		border: none;
		background: transparent;
	}
	#login #code-inp {
		float: left;
		width: 13rem;
		border: 1px solid #aaa;
	}
	#login #code-img {
		float: right;
		height: 3rem;
		border: 1px solid #aaa;
	}
	[type="submit"] {
		color: #fff;
		width: 23rem !important;
		background: #0000FF;
	}
	[type="submit"]:hover {
		color: #ddd;
		background: #00d;
	}
	.friend-link {
		text-align: center;
	}
	.friend-link [type="checkbox"] {
		vertical-align: bottom;
		width: 1.1rem !important;
		height: 1.1rem !important;
	}
	#select-fill {
		padding-bottom: 5.5rem;
		margin-bottom: 2rem;
	}
	#hint {
		color: #666;
		font-size: .8rem;
		width: 90%;
		margin: .8rem auto;
	}
	.secret {
		margin: 0 auto;
		width: 24rem;
		height: 2.4rem;
		line-height: 2.4rem;
		margin: .5rem 0;
	}
	.secret>b {
		font-size: 1.1rem;
		float: left;
	}
	.secret>input {
		float: left;
	}
	.secret label {
		float: left;
		padding: 0 .2rem;
	}
	.secret label:last-child {
		float: right;
	}
	.secret [type="text"],.secret [type="date"] {
		height: 2.4rem;
		width: 16.2rem;
		font-size: 1.1rem;
		box-sizing: border-box;
	}
	.secret [name="sex"] {
		margin-left: 2rem;
	}
	.secret [type="date"] {
		width: 14rem;
	}
	#select-fill [name="produce"] {
		font-size: 1.1rem;
		width: 24rem;
		height: 4.8rem;
		line-height: 1.6rem;
	}
</style>
