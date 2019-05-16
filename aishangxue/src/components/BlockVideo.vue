<template>
	<div id="block-video">
		<div id="top" class="clear">
			<div id="title-box">
				<div id="title-a-box"><router-link id="title" :to="{path:'/show',query: {index: inde}}" @click.native="changeBlockActiveIndex">{{ite.title}}</router-link></div>
				<div id="labels-box"><i v-for="(it,ind) in ite.classify.split(',')">{{it}}</i></div>
			</div>
			<div id="video-box">
				<video :src="videoSrc" controls>您的浏览器不支持video</video>
			</div>
		</div>
		<div id="bottom">
			<strong>{{ite.author_title}}</strong>
			<router-link to="/">{{ite.author_nickname}}</router-link>
			<span>{{timeAgo}}</span>
			<el-tooltip content="不感兴趣" placement="bottom-end">
				<button>×</button>
			</el-tooltip>
		</div>
	</div>
</template>

<script>
	export default {
		props:["ite","inde"],
		data() {
			return {
				videoSrc:"",
				timeAgo:""
			};
		},
		methods:{
			changeBlockActiveIndex(){
				this.$emit("changeIndex")
			}
		},
		mounted(){
			let publishTime=this.ite.publish_time;
			this.videoSrc="http://localhost:81/video/"+this.ite.video;
			this.timeAgo=this.$calAgoTime(publishTime)
		}
	}
</script>

<style scoped>
	#block-video{
		padding: .5rem 0 0;
		border-bottom: 1px solid lightblue;
	}
	#block-video:hover{
		border-bottom: 1px solid blue;
	}
	#block-video:hover #labels-box i{
		color: deepskyblue;
		border: 1px solid deepskyblue;
	}
	#block-video:hover #bottom strong{
		background: deepskyblue;
	}
	#top{
		height: 7rem;
	}
	#title-box{
		float: left;
		width: 54%;
	}
	#title-a-box{
		height: 5.1rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
		overflow: hidden;
	}
	#title{
		cursor: pointer;
		color: #000;
		font-size: 1.14rem;
		font-weight: 900;
		line-height: 1.7rem;
	}
	#title:hover{
		text-decoration: underline;
	}
	#labels-box{
		height: 1.9rem;
		line-height: 1.9rem;
	}
	#labels-box i{
		color: skyblue;
		font: normal .8rem/1rem "微软雅黑";
		margin-right: .4rem;
		padding: 0 .4rem;
		border-radius: .2rem;
		border: 1px solid skyblue;
	}
	#video-box{
		cursor: pointer;
		float: right;
		width: 42%;
		height: 100%;
		overflow: hidden;
	}
	#video-box video{
		height: 100%;
		box-sizing: border-box;
		border: 1px solid transparent;
	}
	#video-box video:hover{
		border: 0;
	}
	#bottom{
		position: relative;
		height: 1.8rem;
		line-height: 1.8rem;
	}
	#bottom strong{
		color: #fff;
		font-size: 1rem;
		padding: 0 5px;
		border-radius: .2rem;
		background: lightblue;
		margin-right: .5rem;
	}
	#bottom a{
		margin-right: .5rem;
	}
	#bottom a:hover{
		font-weight: 900;
	}
	#bottom span{
		color: #aaa;
	}
	#bottom button{
		color: lightblue;
		float: right;
		padding: 0;
		font: normal 1.14rem "微软雅黑";
		height: 1.8rem;
		width: 1.8rem;
		border: 0;
		background: transparent;
	}
	#bottom button:hover{
		color: blue;
		font-weight: 900;
	}
</style>
