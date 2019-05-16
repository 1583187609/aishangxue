<template>
	<div id="help-feedback-box" class="clear" v-drag>
		<div id="chat" v-show="showWho=='help'">
			<div id="chat-head" class="drag-area">智能聊天机器人为您解答疑惑<button @click.prevent="showPage('')">隐藏</button></div>
			<div id="chat-body">
				<div class="chat-cont">
					<div class="it" v-for="(ite,inde) in 5">
						<div class="it-basic">
							<router-link to="/"><img class="head-img" src="../assets/img/user_touxiang.jpg"/></router-link>
							<b>智能聊天机器人</b>
						</div>
						<div class="it-say">您好，请问您什么时候可以来，请问您什么时候可以来，请问您什么时候可以来就职？您好，请问您什么时候可以来就职？您好，请问您什么时候可以来就职？</div>
					</div>
					<div class="me clear" v-for="(ite,inde) in 3">
						<div class="me-basic">
							<router-link to="/"><img class="head-img" src="../assets/img/user_touxiang.jpg"/></router-link>
							<b>别样的感动</b>
						</div>
						<div class="me-say">您好，我随时都可以。</div>
					</div>
				</div>
			</div>
			<div id="chat-foot" class="clear">
				<div id="send-box">
					<input type="text" />
					<input type="button" value="发送" />
				</div>
			</div>
		</div>
		<div id="feedback"  v-show="showWho=='feedback'">
			<div id="greet">
				<p>百分百努力，只为您十分满意！</p>
				<p>我们将会认真对待您的每一条反馈信息！</p>
			</div>
			<hr />
			<form method="get" action="">
				<span>请在下方输入反馈信息：</span>
				<textarea placeholder="请输入反馈内容……"></textarea>
				<label><input type="submit" value="提交" /></label>
			</form>
		</div>
		<div id="enter-help" v-drag>
			<div class="drag-area">
				<div class="btns-box">
					<button id="help-btn" @click.prevent="showPage('help')">帮助</button>
					<button id="feedback-btn" @click.prevent="showPage('feedback')">反馈</button>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				showWho: ""
			};
		},
		methods:{
			showPage(str){
				this.showWho=str;
				console.log(this.showWho)
			}
		}
	}
</script>

<style scoped>
	#help-feedback-box{
		position: fixed;
		right: 4rem;
		top: 50%;
		width: 50%;
		height: 96%;
		border-radius: 1.5rem;
		transform: translate(0,-50%);
		z-index: 100;
	}
	/******聊天界面********/
	#chat{
		position: relative;
		width: 100%;
		height: 100%;
		overflow: hidden;
		border: 1px solid skyblue;
		border-radius: 1.5rem;
	}
	#chat-head{
		color: #00c;
		cursor: move;
		width: 100%;
		height: 3rem;
		font: 600 1.2rem/3rem "微软雅黑";
		text-align: center;
		background: skyblue;
	}
	#chat-head button{
		color: #666;
		float: right;
		height: 2rem;
		border: 0;
		font-size: 1.1rem;
		margin: .5rem 1rem;
		background: transparent;
	}
	#chat-head button:hover{
		color: #000;
	}
	#chat-body{
		position: relative;
		height: calc(100% - 6rem);
		height: -webkit-calc(100% - 6rem);
		height: -moz-calc(100% - 6rem);
		width: 100%;
		padding: 1rem 1.5rem;
		box-sizing: border-box;
		overflow: auto;
		background:#eef;
	}
	#chat-body [class$="-basic"]{
		height: 2rem;
		line-height: 2rem;
	}
	#chat-body .it [class$="-basic"] img,#chat-body .it [class$="-basic"] b{
		float: left;
	}
	#chat-body .me [class$="-basic"] img,#chat-body .me [class$="-basic"] b{
		float: right;
	}
	#chat-body [class$="-say"]{
		font: normal 1rem/1.4rem "微软雅黑";
		border-radius: .5rem ;
		margin: .3rem 0;
		padding: .3rem .5rem;
		max-width: 80%;
		background: yellow;
	}
	#chat-body .it [class$="-say"]{
		margin-left: 1.8rem;
	}
	#chat-body .me [class$="-say"]{
		float: right;
		margin-right: 1.8rem;
	}
	#chat-body .head-img{
		float: left;
		height: 1.8rem;
		width: 1.8rem;
		border-radius: 50%;
	}
	#chat-body .it .head-img{
		margin-right: .5rem;
	}
	#chat-body .me .head-img{
		margin-left: .5rem;
	}
	#chat-foot{
		position: absolute;
		bottom: 0;
		width: 100%;
		height: 3rem;
		line-height: 2.6rem;
		text-align: center;
		background: skyblue;
	}
	#send-box{
		width: 90%;
		height: 2.2rem;
		margin: .2rem auto;
		overflow: hidden;
		border: 1px solid blue;
		border-radius: .5rem;
	}
	#chat-foot input{
		height: 2.2rem;
		border: 0;
		font-size: 1.1rem;
		box-sizing: border-box;
		border: 0;
	}
	#chat-foot [type="text"]{
		float: left;
		width:90%;
		box-sizing: border-box;
		padding: 0 .5rem;
	}
	#chat-foot [type="button"]{
		color: #fff;
		float: right;
		width:10%;
		background: #00f;
	}
	#chat-foot [type="button"]:hover{
		background: #00c;
	}
	/******反馈界面********/
	#feedback{
		height: 100%;
		width: 80%;
		float: right;
		border-radius: 1.5rem;
		border: 1px solid #ccc;
		background: #eee;
	}
	#greet{
		width: 80%;
		margin: 3rem auto 1rem;
	}
	#greet p{
		text-align: center;
		font: 500 1.2rem/2.4rem "微软雅黑";
		margin: 0;
	}
	#feedback hr{
		width: 85%;
		border: 1px solid #ccc;
		margin: 2rem auto 2rem;
	}
	#feedback form{
		width: 80%;
		margin: 0 auto;
	}
	#feedback form span{
		font: 600 1.1rem/2rem "微软雅黑";
	}
	#feedback form textarea{
		width: 100%;
		font-size: 1rem;
		box-sizing: border-box;
		padding: .5rem 1rem;
		height: 22rem;
		line-height: 1.6rem;
		border: 1px solid #ccc;
	}
	#feedback form label{
		margin-top: 2rem;
		text-align: center;
	}
	#feedback form [type='submit']{
		color: #fff;
		height: 2.4rem;
		padding: 0 1rem;
		font: 900 1.1rem "微软雅黑";
		background: blue;
	}
	/******帮助入口********/
	#enter-help{
		position: fixed;
		right: 0;
		top: 50%;
		transform: translate(50%,-50%);
		border-radius: 50%;
	}
	#enter-help .drag-area{
		cursor: move;
		height: 5rem;
		width: 5rem;
		border: 5px solid royalblue;
		border-radius: 50%;
	}
	#enter-help .btns-box{
		height: 100%;
		width: 100%;
		border-radius: 50%;
		overflow: hidden;
	}
	#enter-help button{
		color: #fff;
		height: 50%;
		width: 100%;
		box-sizing: border-box;
		font: 900 1.1rem "微软雅黑";
		background: deepskyblue;
		border: 3px outset #ccc;
	}
	#enter-help button:hover{
		background: blue;
	}
	#enter-help button:active{
		border: 3px inset #ccc;
	}
	#help-btn{
		border-radius: 4rem 4rem 0 0 ;
	}
	#feedback-btn{
		border-radius: 0 0 4rem 4rem;
	}
</style>
