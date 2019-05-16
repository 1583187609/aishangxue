<template>
	<div id="block-imgtext">
		<div id="top" class="clear">
			<div :class="firstImgSrc?'title-box-hasimg':'title-box-noimg'">
				<div id="title-a-box">
					<router-link id="title" :to="{path:'/show',query: {index: inde}}" @click.native="changeBlockActiveIndex">{{ite.title}}</router-link>
				</div>
				<div id="labels-box"><i v-for="(it,ind) in ite.classify.split(',')">{{it}}</i></div>
			</div>
			<div class="img-box" v-if="firstImgSrc"><img :src="firstImgSrc" /></div>
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
				firstImgSrc:"",
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
			let hasImg=this.ite.imgtext.match(/src="[\w\W]*"/i);
			if(hasImg){this.firstImgSrc=hasImg[0].trim().split("=")[1].replace(" style","").replace(/"/g,'');}
			this.timeAgo=this.$calAgoTime(publishTime);
		}
	}
</script>

<style scoped>
	#block-imgtext{
		padding: .5rem 0 0;
		border-bottom: 1px solid lightblue;
	}
	#block-imgtext:hover{
		border-bottom: 1px solid blue;
	}
	#block-imgtext:hover #labels-box i{
		color: deepskyblue;
		border: 1px solid deepskyblue;
	}
	#block-imgtext:hover #bottom strong{
		background: deepskyblue;
	}
	#top{
		height: 5.4rem;
	}
	.title-box-noimg{
		width: 100%;
	}
	.title-box-hasimg{
		float: left;
		width: 62%;
	}
	#title-a-box{
		height: 3.6rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	#title{
		cursor: pointer;
		color: #000;
		font-size: 1.14rem;
		font-weight: 900;
		line-height: 1.8rem;
	}
	#title:hover{
		text-decoration: underline;
	}
	#labels-box{
		height: 1.8rem;
		line-height: 1.8rem;
	}
	#labels-box i{
		color: skyblue;
		font: normal .8rem/1rem "微软雅黑";
		margin-right: .4rem;
		padding: 0 .4rem;
		border-radius: .2rem;
		border: 1px solid skyblue;
	}
	.img-box{
		cursor: pointer;
		float: right;
		width: 35%;
		height: 100%;
		overflow: hidden;
	}
	.img-box img{
		height: 100%;
		width: 100%;
		box-sizing: border-box;
		border: 1px solid transparent;
	}
	.img-box img:hover{
		border: none;
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
