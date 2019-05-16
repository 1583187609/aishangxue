<template>
	<div class="findposter-item">
		<div class="head clear">
			<strong>寻_启事</strong>
			<span>1天前</span>
			<button>私聊</button>
		</div>
		<div class="body clear">
			<img src="../assets/img/user_touxiang.jpg" />
			<ul>
				<li><b>标题：</b><span class="title">寻狗启事</span></li>
				<li><b>电话：</b>18483221518</li>
				<li class="special"><b>特别说明：</b>这里是特别说明</li>
			</ul>
		</div>
		<div class="description">
			这里是描述内容
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
	.findposter-item{
		width: 31%;
		border: 1px solid #ccc;
		margin: 1%;
		border: 1px solid #666;
		border-radius: .5rem;
		overflow: hidden;
	}
	.head{
		text-align: center;
		height: 2.5rem;
		background: #aaa;
	}
	.head strong{
		float: left;
		font: 700 1.3rem/2rem "微软雅黑";
		height: 2rem;
		padding: 0 1rem;
		margin: .25rem .5rem;
		border-radius: .5rem;
		background: #eef;
	}
	.head span{
		color: #333;
		position: relative;
		top: .9rem;
		font: normal .8rem/1.4rem;
		height: 1.4rem;
		margin-top: .9rem;
	}
	.head button{
		color: #fff;
		float: right;
		font: normal 1.1rem "微软雅黑";
		height: 2rem;
		margin: .25rem .5rem;
		background: #aaa;
	}
	.body{
		height: 8.5rem;
		box-sizing: border-box;
		padding: .5rem .3rem;
		background: blue;
	}
	.title{
		color: red;
		font-weight: 900;
	}
	.body img{
		float: left;
		height: 100%;
		width: 35%;
	}
	.body ul{
		float: right;
		height: 100%;
		width: 60%;
	}
	.body .special{
		height: 4.5rem;
		line-height: 1.5rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
		overflow: hidden;
		background: yellow;
	}
	.description{
		padding: 0 .3rem .6rem;
		height: 15rem;
		line-height: 1.5rem;
		overflow: auto;
		background: gray;
	}
</style>
