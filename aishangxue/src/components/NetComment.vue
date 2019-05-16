<template>
	<div id="net-comment">
		<div id="head-box">
			<img :src="'http://localhost:81/headimg/'+ite.author_headimg">
			<b>{{ite.author_nickname}}</b>
			<span>{{timeAgo}}</span>
		</div>
		<div id="main-box">
			<div id="main" v-if="ite.comment">{{ite.comment}}</div>
			<div id="main" v-else-if="ite.answer">{{ite.answer}}</div>
			<div id="bottom">
				<button @click="reply">评论</button>
				<button @click="lookReply">{{replyCount}}条回复▼</button>
				<span>{{ite.hate}}踩</span>
				<span>{{ite.like}}赞</span>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		props:["ite"],
		data() {
			return {
				timeAgo:"",
				replyCount:0     //可以查看多少条回复
			};
		},
		methods:{
			reply(){
				alert("暂未开通回复功能！")
			},
			lookReply(){
				alert("暂未开通查看回复功能！")
			}
		},
		mounted(){
			let publishTime=this.ite.publish_time;
			this.timeAgo=this.$calAgoTime(publishTime);
			this.replyCount=Math.floor(Math.random()*300)
		}
	}
</script>

<style scoped="">
	#net-comment{
		padding: .5rem 0;
		border-bottom: 1px solid aliceblue;
	}
	#head-box{
		height: 2.5rem;
	}
	#head-box span{
		color: #aaa;
		float: right;
		font-size: .9rem;
	}
	#head-box img{
		width: 2.2rem;
		height: 2.2rem;
		margin-top: .15rem;
		margin-right: .5rem;
		border-radius: 50%;
		box-sizing: border-box;
		border: 1px solid lightblue;
	}
	#head-box b,#head-box span{
		display: inline-block;
		height: 2rem;
		line-height: 2rem;
		vertical-align: top;
	}
	#main-box{
		padding-left: 3rem;
	}
	#main{
		line-height: 1.5rem;
		padding: .1rem 0;
	}
	#bottom{
		font-size: .9rem;
		height: 2.5rem;
		line-height: 2.5rem;
		/* background:#777; */
	}
	#bottom button{
		color: steelblue;
		border: 0;
		background: transparent;
	}
	#bottom span{
		cursor: pointer;
		color: steelblue;
		float: right;
		margin-left: 1.5rem;
	}
	#bottom button:hover,#bottom span:hover{
		color: deepskyblue;
	}
</style>
