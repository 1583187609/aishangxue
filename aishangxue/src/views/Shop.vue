<template>
	<div id="shop">
		<main-nav></main-nav>
		<div class="wrap">
			<div class="menu" @click="foldMenuItem">
				<button id="fold-btn" :class="isFoldMenu?'foldBtnTop':'foldBtnMiddle'">{{isFoldMenu?"展开菜单":"折叠菜单"}}</button>
				<div class="menu-box">
					<h2 id="goodsClassify" class="first-menu"><span>▼</span>商品分类</h2>
					<ul class="second-menu" style="display: block;">
						<li data-classify="index" class="active-menu-li">主页</li>
						<li data-classify="newest">最新</li>
						<li data-classify="hottest">最热</li>
						<li data-classify="recommend">推荐</li>
					</ul>
					<h2 id="shopRecord" class="first-menu"><span>▶</span>购物记录</h2>
					<ul class="second-menu">
						<li data-classify="shopCar">购物车(23)</li>
						<li data-classify="waitSend">待发货(23)</li>
						<li data-classify="waitAccept">待收货(23)</li>
						<li data-classify="waitComment">待评价(23)</li>
					</ul>
				</div>
			</div>
			<div class="main" ref="main">
				<goods-classify v-if="menuType=='goodsClassify'" :menuClassify="menuClassify" @sonUpdateMenuClassify="sonUpdateMenuClassify"></goods-classify>
				<shop-record v-if="menuType=='shopRecord'" :menuClassify="menuClassify"></shop-record>
			</div>
		</div>
	</div>
</template>

<script>
	import MainNav from "../components/MainNav.vue"
	import GoodsClassify from "../components/GoodsClassify"
	import ShopRecord from "../components/ShopRecord"
	import GoodsDisplay from "../components/GoodsDisplay"
	export default {
		components:{
			MainNav,GoodsDisplay,GoodsClassify,ShopRecord
		},
		data() {
			return {
				isFoldMenu:false,
				menuType:"goodsClassify",
				menuClassify:"index"
			};
		},
		methods:{
			foldMenuItem(e){
				let currentElement=e.target;
				let nextElement=currentElement.nextElementSibling;
				if(currentElement.localName=="h2"){     //关闭菜单子项
					if(getComputedStyle(nextElement).display=="none"){
						currentElement.children[0].innerText="▼";
						nextElement.style.display="block";
					}else{
						currentElement.children[0].innerText="▶";
						nextElement.style.display="none";
					}
				}else if(currentElement.localName=="li"){
					document.querySelector(".active-menu-li").classList.remove("active-menu-li");
					currentElement.classList.add("active-menu-li");
					this.menuType=currentElement.parentNode.previousElementSibling.id;
					this.menuClassify=currentElement.dataset.classify;
				}else if(currentElement.id=="fold-btn"){     //将整个菜单折叠隐藏
					let menu=currentElement.parentNode;
					this.isFoldMenu=!this.isFoldMenu;
					if(getComputedStyle(nextElement).display=="none"){
						nextElement.style.display="block";
						menu.style.width="12%";
					}else{
						nextElement.style.display="none";
						menu.style.width=0;
					}
					this.$refs.main.style.marginLeft=menu.offsetWidth+"px";
				}
			},
			sonUpdateMenuClassify(val){
				this.menuClassify=val
			}
		},
		computed:{
			
			
		},
		mounted() {
			
		}
	}
</script>

<style scoped>
	.wrap{
		
	}
	.condition label{
		float: left;
		margin-right: 2rem;
	}
	.menu{
		position: absolute;
		top: 0;
		left: 0;
		width: 12%;
		/* width: 0; */
		height: 100%;
		background: #97DD09;
	}
	.menu-box{
		/* display: none; */
	}
	#fold-btn{
		color: #eee;
		cursor: pointer;
		position: absolute;
		top: 0;
		left: 0;
		margin: 0;
		width: 2.2rem;
		line-height: 1.6rem;
		text-align: center;
		padding: 1rem 0;
		font-size: 1.14rem;
		font-weight: 700;
		border-radius: 1rem 0 0 1rem;
		border: 2px outset #6fd325;
		background: #4DB103;
	}
	#fold-btn:active{
		border: 2px inset #6fd325;
	}
	.foldBtnTop{
		transform: translate(-100%,0);
	}
	.foldBtnMiddle{
		transform: translate(-100%,0);
	}
	.main{
		margin-left: 12%;
		/* margin-left: 0; */
		height: 100%;
		overflow: auto; 
	}
	.main [class$="-part"]{
		margin-bottom: .5rem;
		padding: .5rem 0 .5rem;
		background: palegreen;
	}
	[class$="-part"] h2{
		margin: 0 .5rem .5rem;
		padding: 0;
		height: 2rem;
		border-bottom: 2px solid #f00;
	}
	[class$="-part"] h2 b{
		color: #fff;
		float: left;
		height: 2rem;
		font: 700 1.2rem/2rem "微软雅黑";
		padding: 0 2rem;
		border-radius: 1rem 1rem 0 0;
		background: #f00;
	}
	[class$="-part"] h2 button,[class$="-part"] h2 span{
		float: right;
		line-height: 1.5rem;
		margin: .5rem .5rem 0;
		font-weight: normal;
		font-size: 1.1rem;
	}
	[class$="-part"] h2 button{
		border: 0;
		padding: 0;
		background: none;
	}
	[class$="-part"] h2 span{
		
	} 
	.flex-box{
		display: flex;
		justify-content: flex-start;
		flex-wrap: wrap;
	}
</style>
