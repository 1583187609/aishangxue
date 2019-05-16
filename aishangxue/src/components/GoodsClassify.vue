<template>
	<div id="goods-classify">
		<div id="index" v-if="menuClassify=='index'">
			<div class="banner">
				<div class="newest-3">
					<div class="est-1">
						<span>TOP3</span>
						<b>最新</b>
					</div>
					<div class="est-2"><button class="more">更多</button></div>
					<div class="est-3"></div>
					<div class="est-4"></div>
				</div>
				<div class="banner-center">
					<div class="shop-logo">爱尚商城</div>
					<form id="search">
						<input type="search" placeholder="请输入你想搜索的商品" />
						<input type="button" value="搜索" @click="goSearchGoodsEnd" />
					</form>
				</div>
				<div class="hottest-3">
					<div class="est-1">
						<span>TOP3</span>
						<b>最热</b>
					</div>
					<div class="est-2"><button class="more">更多</button></div>
					<div class="est-3"></div>
					<div class="est-4"></div>
				</div>
			</div>
			<fieldset class="self-middle-line random">
				<legend>★ 随机展示商品 ★</legend>
				<div class="flex-box">
					<goods-display v-for="item in 20"></goods-display>
				</div>
				<div class="look-more"><span>点击查看更多<br />▼</span></div>
			</fieldset>
			<fieldset class="self-middle-line recommend">
				<legend>♥ 推荐 ♥</legend>
				<div class="flex-box">
					<goods-display v-for="item in 10"></goods-display>
				</div>
				<div class="look-more"><span>点击查看更多<br />▼</span></div>
			</fieldset>
			<fieldset class="self-middle-line you-love">
				<legend>♥ 猜你喜欢 ♥</legend>
				<div class="flex-box">
					<goods-display v-for="item in 10"></goods-display>
				</div>
				<div class="look-more"><span>点击查看更多<br />▼</span></div>
			</fieldset>
		</div>
		<div id="newest" v-if="menuClassify=='newest'">
			<filter-goods></filter-goods>
			最新
			<div class="flex-box">
				<goods-display v-for="item in 10"></goods-display>
			</div>
		</div>
		<div id="hottest" v-if="menuClassify=='hottest'">
			<filter-goods></filter-goods>
			最热
			<div class="flex-box">
				<goods-display v-for="item in 10"></goods-display>
			</div>
		</div>
		<div id="recommend" v-if="menuClassify=='recommend'">
			<filter-goods></filter-goods>
			推荐
			<div class="flex-box">
				<goods-display v-for="item in 10"></goods-display>
			</div>
		</div>
		<div id="search-goods" v-if="menuClassify=='searchGoods'">
			<div id="searchend-header">
				<form id="search">
					<input type="search" placeholder="请输入你想搜索的商品" />
					<input type="button" value="搜索" />
				</form>
				<p>已为您搜索到<b>129</b>条结果<button @click="backShopIndex">返回商城主页</button></p>
			</div>
			<div class="flex-box">
				<goods-display v-for="item in 10"></goods-display>
			</div>
		</div>
	</div>
</template>

<script>
	import GoodsDisplay from "./GoodsDisplay.vue"
	import FilterGoods from "./FilterGoods.vue"
	export default {
		components:{
			GoodsDisplay,FilterGoods
		},
		props:["menuClassify"],
		data() {
			return {
				
			};
		},
		methods:{
			goSearchGoodsEnd(){
				this.$emit("sonUpdateMenuClassify","searchGoods")
			},
			backShopIndex(){
				this.$emit("sonUpdateMenuClassify","index")
			}
		},
		computed:{
			
		}
	}
</script>

<style scoped>
	/************public************/
	.self-middle-line{
		border: none;
		border-top: 1px solid #ccc;
	}
	.self-middle-line legend{
		color: #666;
		margin: 0 auto;
		padding: 0 2rem;
		font: 900 1.4rem/2rem "微软雅黑";
	}
	/************index************/
	#index{
		
	}
	.banner{
		position: relative;
		height: 22rem;
	}
	.newest-3,.hottest-3{
		position: absolute;
		top: 1rem;
		height: 20rem;
		width: 20rem;
	}
	.newest-3{
		left: 1rem;
		background: greenyellow;
	}
	.hottest-3{
		right: 1rem;
		background: orange;
	}
	[class^="est"]{
		float: left;
		height: 50%;
	}
	.est-1{
		width: 25%;
		background: lightcoral;
	}
	.est-1 span{
		display: block;
		height: 3rem;
		width: 3rem;
		border-radius: 50%;
		font: 600 1rem/3rem "华文行楷";
		margin: .3rem auto;
		background: red;
	}
	.est-1 b{
		display: block;
		width: 3rem;
		height: 5.6rem;
		margin: 0 auto;
		text-align: center;
		font: 900 2.5rem/2.8rem "华文行楷";
	}
	.est-2{
		position: relative;
		width: 75%;
		background: lightcyan;
	}
	.est-2 .more{
		color: #fff;
		position: absolute;
		right: 0;
		top: 0;
		border: 0;
		padding: .3rem .8rem;
		border-radius: 0 0 0 .4rem;
		background: orange;
		opacity: .5;
	}
	.est-2 .more:hover{
		opacity: 1;
	}
	.est-3{
		width: 50%;
		background: lightseagreen;
	}
	.est-4{
		width: 50%;
		background: lightpink;
	}
	.banner-center{
		height: 100%;
		margin: 0 22rem;
		overflow: hidden;
		background: lightblue;
	}
	.shop-logo{
		font: 900 3rem/5rem "华文行楷";
		margin: 1rem auto;
		width: 80%;
		text-align: center;
		background: #eec;
	}
	#search{
		width: 80%;
		margin: 0 auto;
		font-size: 0;
		background: blue;
		border-radius: .5rem;
		border: 1px solid #00f;
		overflow: hidden;
	}
	#search input{
		vertical-align: top;
		height: 2.8rem;
		font-size: 1.1rem;
		box-sizing: border-box;
		padding: 0 .5rem;
		border: 0;
	}
	#search [type="search"]{
		width: -webkit-calc(100% - 3.5rem);
		width: -moz-calc(100% - 3.5rem);
		width: calc(100% - 3.5rem);
	}
	#search [type="button"]{
		color: #fff;
		width: 3.5rem;
		background: #00f;
	}
	#search [type="button"]:hover{
		color: #eee;
		background: #00e;
	}
	#searchend-header{
		
		margin: 0 2rem;
		overflow: hidden;
	}
	#searchend-header #search{
		width: 50%;
		margin-top: 1.5rem;
	}
	#searchend-header p{
		text-align: left;
		font: 500 1.2rem/2rem "微软雅黑";
		border-bottom: 1px solid #ccc;
	}
	#searchend-header p button{
		color: #666;
		float: right;
		border: 0;
		margin-right: .5rem;
		font-size: 1.14rem;
		background: transparent;
	}
	#searchend-header p button:hover{
		color: #000;
	}
	.random,.you-love,.recommend{
		margin: 2rem 1.5rem;
	}
	.flex-box{
		display: flex;
		justify-content: flex-start;
		flex-wrap: wrap;
	}
	.look-more{
		color: #fff;
		height: 3rem;
		line-height: 3rem;
		border-radius: .5rem;
		background: orange;
	}
	.look-more:hover{
		color: #eee;
		cursor: pointer;
		background: darkorange;
	}
	.look-more span{
		display: inline-block;
		text-align: center;
		position: relative;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		height: 2.4rem;
		font: 500 1.14rem/1.2rem "微软雅黑";
	}
</style>
