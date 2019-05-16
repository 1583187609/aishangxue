<template>
	<div id="block-adv">
		<div id="top" class="clear">
			<div id="title-a-box"><router-link id="title" :class="imgSrcs.length==1?'title-img':'title-imgs-video'" :to="{path:'/show',query: {index: inde}}" @click.native="changeBlockActiveIndex">{{ite.title}}</router-link></div>
			<div :class="{'ImgVideoBox-video':imgSrcs.length==0,'ImgVideoBox-img':imgSrcs.length==1,'ImgVideoBox-imgs':imgSrcs.length>1}">
				<router-link :to="{path:'/show',query: {index: inde}}" @click.native="changeBlockActiveIndex">
					<img :class="'img-'+imgSrcs.length" :src="imgSrcs[ind]" v-for="(it,ind) in imgSrcs" v-if="imgSrcs.length" />
				</router-link>
				<router-link :to="{path:'/show',query: {index: inde}}" @click.native="changeBlockActiveIndex">
					<video :src="videoSrc"  v-if="videoSrc">您的浏览器不支持video</video>
				</router-link>
			</div>
		</div>
		<div id="bottom">
			<span>广告</span>
			<el-tooltip content="不感兴趣此类广告" placement="bottom-end">
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
				imgSrcs:[],
				videoSrc:""
			};
		},
		methods:{
			changeBlockActiveIndex(){
				this.$emit("changeIndex")
			}
		},
		mounted(){
			let imgLength=JSON.parse(this.ite.src).img.length;
			if(imgLength){this.imgSrcs=JSON.parse(this.ite.src).img;}
			else{this.videoSrc=JSON.parse(this.ite.src).video;}
		}
	}
</script>

<style scoped>
	#block-adv{
		width: 96%;
		border-radius: .5rem;
		margin: .5rem auto 0;
		border: 1px solid lightblue;
	}
	#block-adv:hover{
		border: 1px solid blue;
	}
	#block-adv:hover #bottom span{
		color: deepskyblue;
		border: 1px solid deepskyblue;
	}
	#title-a-box{
		
	}
	#title{
		
	}
	#title:hover{
		text-decoration: underline;
	}
	#top img,#top video{
		box-sizing: border-box;
		border: 1px solid transparent;
	}
	#top img:hover,#top video:hover{
		border: 0;
	}
	.title-img{
		color: #000;
		float: left;
		font-size: 1.14rem;
		font-weight: 900;
		width: 52%;
		margin: .5rem 0 .1rem .6rem;
		line-height: 1.7rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 4;
		overflow: hidden;
	}
	.title-imgs-video{
		color: #000;
		display: block;
		font-size: 1.14rem;
		font-weight: 900;
		width: 94%;
		margin: .5rem auto .1rem;
		line-height: 1.7rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.ImgVideoBox-img{
		float: right;
		width: 40%;
		margin: .5rem .5rem 0 0;
	}
	.ImgVideoBox-imgs{
		display: flex;
		padding: 3px .1rem;
		justify-content: space-around;
	}
	.ImgVideoBox-video{
		text-align: center;
		margin-top: .4rem;
	}
	.img-1{
		width: 100%;
		height: 6.8rem;
	}
	.img-2{
		width: 45%;
		height: 7rem;
	}
	.img-3{
		width: 30%;
		height: 5.5rem;
	}
	.ImgVideoBox-video video{
		width: 92%;
	}
	#bottom{
		margin: .3rem 0 .5rem;
	}
	#bottom span{
		color: skyblue;
		display: inline-block;
		height: 1.7rem;
		padding: 0 .5rem;
		margin-left: .5rem;
		font: normal .8rem/1.7rem "微软雅黑";
		border: 1px solid skyblue;
		box-sizing: border-box;
		border-radius: .3rem;
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
