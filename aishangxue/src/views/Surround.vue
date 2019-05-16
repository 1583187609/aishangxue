<template>
	<div id="surround">
		<main-nav></main-nav>
		<div class="wrap">
			<div class="menu" @click="foldMenuItem">
				<button id="fold-btn" :class="isFoldMenu?'foldBtnTop':'foldBtnMiddle'">{{isFoldMenu?"展开菜单":"折叠菜单"}}</button>
				<div class="menu-box">
					<h2 id="surroundClassify" class="first-menu"><span>▼</span>分类</h2>
					<ul class="second-menu" style="display: block;">
						<li data-classify="all" class="active-menu-li" >全部</li>
						<li data-classify="partFullJob">兼/全职</li>
						<li data-classify="secondDeal">二手转卖</li>
						<li data-classify="findPoster">寻_启事</li>
						<li data-classify="freePublish">其他</li>
					</ul>
				</div>
			</div>
			<div class="main" ref="main">
				<surround-classify v-if="menuType=='surroundClassify'" :menuClassify="menuClassify"></surround-classify>
			</div>
			<chat></chat>
		</div>
	</div>
</template>

<script>
	import MainNav from "../components/MainNav.vue"
	import Chat from "../components/Chat.vue"
	import SurroundClassify from "../components/SurroundClassify"
	
	export default {
		components:{
			MainNav,Chat,SurroundClassify
		},
		data() {
			return {
				isFoldMenu:false,
				menuType:"surroundClassify",
				menuClassify:"partFullJob"
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
			}
		}
	}
</script>

<style scoped>
	#chat{
		display: none;
	}
	/*****************show*******************/
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
	.flex-box{
		display: flex;
		justify-content: flex-start;
		flex-wrap: wrap;
	}
	/* .main{
		float:left;
		width: -moz-calc(100% - 2rem); 
		width: -webkit-calc(100% - 2rem); 
		width: calc(100% - 2rem);
		padding: 0 1rem;
		height: 100%;
		overflow: auto;
		background: #ccc;
	}
	#banner{
		color: #a00;
		font: 700 3rem/5rem "华文行楷";
		height: 5rem;
		background: #999;
	}
	 */
</style>

