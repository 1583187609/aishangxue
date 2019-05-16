<template>
	<div class="freepublish-item">
		<div class="head clear">
			<strong>其他</strong>
			<span>1天前</span>
			<button>私聊</button>
		</div>
		<div class="body clear">
			<img src="../assets/img/user_touxiang.jpg" />
			<ul>
				<li><b>其他1：</b>其他内容1</li>
				<li><b>其他2：</b>其他内容2</li>
				<li><b>其他3：</b>其他内容3</li>
				<li><b>其他4：</b>其他内容4</li>
				<li><b>其他5：</b>其他内容5</li>
				<li class="special"><b>特别说明：</b>这是特别说明的部分是特别说明的部分的内能是特别说明的部分的内能是特别说明的部分的内能是特别说明的部分的内能的内能够</li>
			</ul>
		</div>
		<div class="description">描述描述内容述内容描述内容描述内容描述内容描述内容描述内容描述内容描述内容描述内容描述内容描述内容描述内容描述内容描述内容描述内容容</div>
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
	.freepublish-item{
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
		height: 10.5rem;
		width: 100%;
		box-sizing: border-box;
	}
	.body img{
		float: left;
		height: 100%;
		width: 40%;
		margin: .6rem 0 .6rem 2%;
	}
	.body ul{
		float: right;
		width: 55%;
		height: 100%;
		margin: .6rem 0;
	}
	.body li{
		line-height: 1.5rem;
		font-size: 1.1rem;
	}
	.special{
		height: 3rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.description{
		font-size: 1.1rem;
		width: 100%;
		height: 4.5rem;
		line-height: 1.5rem;
		box-sizing: border-box;
		padding: 0 .8rem;
		margin: .3rem 0 .6rem;
		overflow: auto;
	}
</style>
