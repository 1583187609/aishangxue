<template>
	<div id="chat">
		<div id="chat-head">聊天窗口(12)<button>收起</button></div>
		<div id="chat-body">
			<ul id="chat-list">
				<li v-for="(item,index) in 40">某某人{{index}}号<span>{{index}}</span></li>
			</ul>
			<div class="chat-cont">
				<div class="it" v-for="(ite,inde) in 5">
					<div class="it-basic">
						<router-link to="/"><img class="head-img" src="../assets/img/user_touxiang.jpg"/></router-link>
						<b>一直幸福的兔子</b>
					</div>
					<div class="it-say">您好，请问您什么时候可以来就职？您好，请问您什么时候可以来就职？您好，请问您什么时候可以来就职？</div>
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
			<input type="text" />
			<input type="button" value="发送" />
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				
			};
		}
	}
</script>

<style scoped>
	#chat{
		position: fixed;
		right: 1rem;
		top: 3%;
		height: 94%;
		width: 33rem;
		border-radius: .5rem;
		z-index: 99;
		overflow: hidden;
		background: #eec;
	}
	#chat-head{
		cursor: move;
		position: absolute;
		top: 0;
		width: 100%;
		height: 3rem;
		font: 600 1.2rem/3rem "微软雅黑";
		text-align: center;
		background:#eee;
	}
	#chat-head button{
		float: right;
		height: 2rem;
		border: 0;
		margin: .5rem 1rem;
		background: transparent;
	}
	#chat-body{
		position: relative;
		height: -moz-calc(100% - 5.6rem); 
		height: -webkit-calc(100% - 5.6rem); 
		height: calc(100% - 5.6rem);
		margin: 3rem 0 2.6rem;
		background:green;
	}
	#chat-list{
		position: absolute;
		left: 0;
		width: 9rem;
		height: 100%;
		padding: 0 .5rem;
		box-sizing: border-box;
		overflow: auto;
		background:#aaa;
	}
	#chat-list li{
		position: relative;
		line-height: 2rem;
		border-bottom: 1px solid #ccc;
	}
	#chat-list li span{
		color: #fff;
		display: inline-block;
		position: absolute;
		right: 0;
		top: .3rem;
		height: 1.4rem;
		padding: 0 3px;
		font: normal .8rem/1.4rem "微软雅黑";
		border-radius: .3rem;
		background: red;
	}
	.chat-cont{
		position: absolute;
		right: 0;
		width: 24rem;
		height: 100%;
		padding: 0 9px;
		overflow: auto;
		background:#888;
	}
	.chat-cont [class$="-basic"]{
		height: 1.8rem;
		line-height: 1.8rem;
	}
	.chat-cont .it [class$="-basic"] img,.chat-cont .it [class$="-basic"] b{
		float: left;
	}
	.chat-cont .me [class$="-basic"] img,.chat-cont .me [class$="-basic"] b{
		float: right;
	}
	.chat-cont [class$="-say"]{
		font: normal .9rem/1.4rem "微软雅黑";
		border-radius: .5rem ;
		margin: .3rem 0;
		padding: 0 .5rem;
		background: yellow;
	}
	.chat-cont .it [class$="-say"]{
		margin-left: 1.8rem;
	}
	.chat-cont .me [class$="-say"]{
		float: right;
		margin-right: 1.8rem;
	}
	.chat-cont .head-img{
		float: left;
		height: 1.8rem;
		width: 1.8rem;
		border-radius: 50%;
	}
	.chat-cont .it .head-img{
		margin-right: .5rem;
	}
	.chat-cont .me .head-img{
		margin-left: .5rem;
	}
	#chat-foot{
		position: absolute;
		bottom: 0;
		width: 100%;
		height: 2.6rem;
		line-height: 2.6rem;
		text-align: center;
		background:#666;
	}
	#chat-foot input{
		height: 1.8rem;
		border: 0;
		font-size: 1.1rem;
		margin-top: .1rem;
		box-sizing: border-box;
	}
	#chat-foot [type="text"]{
		float: left;
		width:90%;
	}
	#chat-foot [type="button"]{
		color: #fff;
		float: right;
		width:10%;
		background: #00f;
	}
</style>
