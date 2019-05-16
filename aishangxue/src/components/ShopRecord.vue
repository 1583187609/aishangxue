<template>
	<div id="shop-record">
		<div id="shopCar" v-if="menuClassify=='shopCar'">
			<div class="header clear">
				<div class="icon-box"><span>购物车</span><img src="../../build/logo.png" /></div>
				<button>编辑</button>
				<label><input type="checkbox" />全选</label>
			</div>
			<ul class="list-ul">
				<goods-list v-for="item in 10"></goods-list>
			</ul>
			<div class="sum-money" v-drag>
				<div class="drag-area">合计：0.00元</div>
				<div>结算(0)</div>
			</div>
		</div>
		<div id="waitSend" v-if="menuClassify=='waitSend'">
			<div class="header clear">
				<div class="icon-box"><span>待发货</span><img src="../../build/logo.png" /></div>
				<button>提醒发货</button>
				<label><input type="checkbox" />全选</label>
			</div>
			<ul class="list-ul">
				<goods-list v-for="item in 10"></goods-list>
			</ul>
		</div>
		<div id="waitAccept" v-if="menuClassify=='waitAccept'">
			<div class="header clear">
				<div class="icon-box"><span>待收货</span><img src="../../build/logo.png" /></div>
				<button>确认收货</button>
				<label><input type="checkbox" />全选</label>
			</div>
			<ul class="list-ul">
				<goods-list v-for="item in 10"></goods-list>
			</ul>
		</div>
		<div id="waitComment" v-if="menuClassify=='waitComment'">
			<div class="header clear">
				<div class="icon-box"><span>待评价</span><img src="../../build/logo.png" /></div>
				<button>暂不评价</button>
				<label><input type="checkbox" />全选</label>
			</div>
			<ul class="list-ul">
				<goods-list v-for="item in 10"></goods-list>
			</ul>
		</div>
	</div>
</template>

<script>
	import GoodsList from "./GoodsList.vue"
	export default {
		components:{
			GoodsList
		},
		props:["menuClassify"],
		data() {
			return {
				
			};
		}
	}
</script>

<style scoped>
	/********public********/
	.list-ul{
		margin: 0 2.5rem;
	}
	.header{
		height: 2.5rem;
		margin: 1rem 1.5rem;
		border-radius: 0 0 0 .6rem;
		border-bottom: 3px solid darkorange;
	}
	.header .icon-box{
		color: #fff;
		float: left;
		height: 2.5rem;
		padding: 0 1.2rem;
		border-radius: .6rem .6rem 0 .6rem;
		background: darkorange;
	}
	.icon-box span{
		vertical-align: top;
		font: 900 1.4rem/2.5rem "微软雅黑";
		display: inline-block;
	}
	.icon-box img{
		height: 1.7rem;
		width: 1.7rem;
		margin-left: .5rem;
		margin-top: .5rem;
	}
	
	.header label,.header button{
		float: right;
		height: 2rem;
		line-height: 2rem;
		font-size: 1.14rem;
		margin: .5rem 1rem 0 0;
	}
	.sum-money{
		position: fixed;
		bottom: 3rem;
		right: 3rem;
		height: 9rem;
		width: 14rem;
		border-radius: .7rem;
		border: 3px solid darkorange;
		/* color: darkorange;
		font-size: 1.2rem;
		font-weight: 900;
		margin-right: 4rem; */
	}
	.sum-money div{
		color: #fff;
		height: 50%;
		font-size: 1.5rem;
		font-weight: 900;
		line-height: 4.5rem;
		box-sizing: border-box;
		padding: 0 .5rem;
	}
	.sum-money div:first-child{
		cursor: move;
		background: #B19103;
		border-radius: .5rem .5rem 0 0;
	}
	.sum-money div:last-child{
		cursor: pointer;
		text-align: center;
		background: #B1A103;
		border-radius: 0 0 .5rem .5rem;
	}
	.sum-money div:last-child:hover{
		color: #ddd;
	}
	.header label [type="checkbox"]{
		height: 1.4rem;
		width: 1.4rem;
		vertical-align: middle;
	}
	.header button{
		border: 0;
		background: transparent;
	}
</style>
