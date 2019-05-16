<template>
	<div id="block-ask">
		<div id="ask-box"><router-link id="ask" :to="{path:'/show',query: {index: inde}}" @click.native="changeBlockActiveIndex">{{ite.question}}</router-link></div>
		<div id="bottom">
			<i v-for="(it,ind) in ite.classify.split(',')">{{it}}</i>
			<span>1分钟前</span>
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
				
			};
		},
		methods:{
			changeBlockActiveIndex(){
				this.$emit("changeIndex")
			}
		},
	}
</script>

<style scoped>
	#block-ask{
		padding: .5rem 0;
		border-bottom: 1px solid lightblue;
	}
	#block-ask:hover{
		border-bottom: 1px solid blue;
	}
	#block-ask:hover #bottom i{
		color: deepskyblue;
		border: 1px solid deepskyblue;
	}
	#block-ask:hover #bottom strong{
		background: deepskyblue;
	}
	#ask-box{
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	#ask{
		cursor: pointer;
		color: #000;
		font-size: 1.14rem;
		font-weight: 900;
		line-height: 1.8rem;
	}
	#ask:hover{
		text-decoration: underline;
	}
	#bottom i{
		color: skyblue;
		font: normal .8rem/1rem "微软雅黑";
		margin-right: .4rem;
		padding: 0 .4rem;
		border-radius: .2rem;
		border: 1px solid skyblue;
	}
	#bottom{
		position: relative;
		height: 2rem;
		line-height: 2rem;
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
