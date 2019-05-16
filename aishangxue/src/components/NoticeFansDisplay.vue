<template>
	<div id="notice-fans-display" class="clear">
		<img id="head-img" src="../assets/img/user_touxiang.jpg" />
		<b id="nickname">别样的感动昵称</b>
		<span id="title">普通用户</span>
		<div id="produce">
			<el-tooltip content="Top center" placement="top">
				<span>个人介绍说明……</span>
			</el-tooltip>
		</div>
		<button id="not-notice-btn" v-if="!(classify=='weekVisited')">{{isNotice?"取消关注":"关注"}}</button>
		<span id="time" v-else-if="classify=='weekVisited'">9分钟前</span>
	</div>
</template>

<script>
	export default {
		props:["classify"],
		data() {
			return {
				isNotice:true,
			};
		},
		mounted() {
			console.log(6666666,this.classify)
		}
	}
</script>

<style scoped>
	#notice-fans-display{
		position: relative;
		height: 3rem;
		margin-left: .5rem;
		margin-bottom: 5px;
		border-bottom: 1px solid lightblue;
		background: #eee;
	}
	#head-img{
		position:absolute;
		top: 50%;
		left: .5rem;
		height: 2.5rem;
		width: 2.5rem;
		transform:translate(0,-50%);
		border-radius: 50%;
	}
	#nickname{
		position:absolute;
		top: 50%;
		left: 3.5rem;
		font: 900 1.1rem "微软雅黑";
		transform:translate(0,-50%);
		width: 8rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	#title{
		display: inline-block;
		position: absolute;
		left: 12.3rem;
		top: 50%;
		transform: translate(0,-50%);
	}
	#produce{
		margin-left: 17rem;
		margin-right: 7rem;
		line-height: 3rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	#not-notice-btn,#time{
		color: #fff;
		position: absolute;
		top: 50%;
		right: .5rem;
		height: 2rem;
		line-height: 2rem;
		transform:translate(0,-50%);
		border: none;
		border-radius: .3rem;
		background: deepskyblue;
	}
	#time{
		color: #666;
		background: none;
	}
	#not-notice-btn:hover{
		color: #000;
		background: lightblue;
	}
	#time{
		
	}
</style>
