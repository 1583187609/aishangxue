<template>
	<li id="goods-list" class="clear">
		<input type="checkbox" />
		<img src="../../build/logo.png" />
		<div id="description">描述来多一点描述文字吧，按我们的接地夹副科级看IE忘记时间的覅就看就卡大家啊方块就奥德赛看风景看今飞凯达撒九分裤</div>
		<ins>￥9.9</ins>
		<span id="num">×1</span>
		<input id="del" type="button" value="删除" />
		<input id="hint-send" type="button" value="提醒发货" />
		<input id="accept" type="button" value="确认收货" />
		<input id="no-comment" type="button" value="暂不评价" />
	</li>
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
	#goods-list{
		position: relative;
		height: 3rem;
		padding: .3rem 1rem;
		border-bottom: 1px solid #ccc;
		background: #eec;
	}
	[type='checkbox']{
		position: absolute;
		top: 50%;
		left: 1rem;
		transform: translate(0,-50%);
		height: 1.6rem;
		width: 1.6rem;
	}
	img{
		position: absolute;
		top: 50%;
		left: 4.5rem;
		transform: translate(0,-50%);
		height: 2.8rem;
		width: 4.4rem;
		background: red;
	}
	#description{
		font-weight: 700;
		font-size: 1.1rem;
		height: 2.8rem;
		line-height: 1.4rem;
		margin: .1rem 24rem 0 9.5rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	ins{
		position: absolute;
		top: 50%;
		right: 20rem;
		transform: translate(0,-50%);
		font: 900 1.3rem/3rem "微软雅黑";
	}
	[type="button"]{
		display: none;
		position: absolute;
		top: 50%;
		right: 3.5rem;
		transform: translate(0,-50%);
		height: 2rem;
		line-height: 2rem;
		border: 0;
		font-size: 1.1rem;
		background: transparent;
	}
	[type="button"]:hover{
		font-weight: 900;
	}
	#hint-send{
		display: none;
		right: 1rem;
	}
	#accept{
		display: none;
		right: 1rem;
	}
	#no-comment{
		display: block;
		right: 1rem;
	}
	#num{
		display: none;
		/* display: inline-block; */
		position: absolute;
		top: 50%;
		right: 1rem;
		font-size: 1.2rem;
		transform: translate(0,-50%);
		height: 2rem;
		text-align:right;
		line-height: 2rem;
		width: 2.5rem;
	}
</style>
