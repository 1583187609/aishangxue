<template>
	<div id="publish">
		<main-nav></main-nav>
		<div class="wrap" style="background: #eec;">
			<div class="menu" @click="foldFirstMenu">
				<h2 data-type="aishang" class="first-menu"><span>▼</span>发布爱尚信息</h2>
				<ul class="second-menu" style="display: block;">
					<li data-classify="question">发布问题</li>
					<li data-classify="answer">发布回答</li>
					<li data-classify="imgText" class="active-menu-li">发布图文</li>
					<li data-classify="video">发布视频</li>
				</ul>
				<h2 data-type="surround" class="first-menu"><span>▶</span>发布周边信息</h2>
				<ul class="second-menu">
					<li data-classify="partFullJob">兼/全职</li>
					<li data-classify="secondDeal">二手转卖</li>
					<li data-classify="findPoster">寻_启事</li>
					<li data-classify="freePublish">自定义</li>
				</ul>
				<h2 data-type="record" class="first-menu"><span>▶</span>发布记录</h2>
				<ul class="second-menu">
					<li data-classify="waitPublish">待发布(0)</li>
					<li data-classify="hasPublish">已发布(0)</li>
					<li data-classify="hasDelete">已删除(0)</li>
					<li data-classify="failPublish">发布失败(0)</li>
				</ul>
			</div>
			<div class="edit-text">
				<h1 id="theme">{{theme}}</h1>
				<publish-aishang v-if="type=='aishang'" :classify="classify" :answersData="answersData" :agoTime="agoTime"></publish-aishang>
				<publish-surround v-if="type=='surround'" :classify="classify"></publish-surround>
				<publish-record v-if="type=='record'" :classify="classify"></publish-record>
			</div>
		</div>
		<!-- <help-feedback></help-feedback> -->
	</div>
</template>

<script>
	import MainNav from "../components/MainNav.vue"
	import PublishAishang from "../components/PublishAishang.vue"
	import PublishSurround from "../components/PublishSurround.vue"
	import PublishRecord from "../components/PublishRecord.vue"
	import HelpFeedback from "../components/HelpFeedback.vue"
	export default {
		components:{
			MainNav,PublishAishang,PublishSurround,PublishRecord,HelpFeedback
		},
		data() {
			return {
				type:"aishang",
				classify:"imgText",
				theme:"发布图文",
				answersData:[],
				agoTime:""
			};
		},
		methods:{
			foldFirstMenu(e){
				let that=this;
				let currentElement=e.target;
				if(currentElement.localName=="h2"){
					let nextElement=currentElement.nextElementSibling;
					if(getComputedStyle(nextElement).display=="none"){
						currentElement.children[0].innerText="▼";
						nextElement.style.display="block";
					}else{
						currentElement.children[0].innerText="▶";
						nextElement.style.display="none";
					}
				}else if(currentElement.localName=="li"){
					let currentH2=currentElement.parentNode.previousElementSibling;
					document.querySelector(".active-menu-li").classList.remove("active-menu-li");
					currentElement.classList.add("active-menu-li");
					this.theme=currentElement.innerText;
					this.$router.push({
					    path:"/publish",
					    query:{
					      type:currentH2.dataset.type,
					      classify:currentElement.dataset.classify
					  }
					});
					this.type=currentH2.dataset.type;
					this.classify=currentElement.dataset.classify;
					if(this.classify=="answer"){
						this.$axios.post('http://localhost:81/getAnswers')
						.then(function(response) {
							that.answersData=response.data;
							let publishTime=that.answersData[0].publish_time;
						    that.agoTime=that.$calAgoTime(publishTime);
						})
						.catch(function(error) {
							console.log(error);
						});
					}
				}
			}
		}
	}
</script>

<style scoped>
	.wrap{
		
	}
	.menu{
		position: absolute;
		left: 0;
		width: 16%;
		height: 100%;
		overflow: hidden scroll; 
		background: #e8e8f9;
	}
	.edit-text{
		position: absolute;
		left: -moz-calc(16% - 1.4rem); 
		left: -webkit-calc(15% - 1.4rem); 
		left: calc(16% - 1.4rem);
		width: 84%;
		height: 100%;
		padding: 0 .7rem;
		overflow: auto; 
		background: #eef;
	}
	#theme{
		display: inline-block;
		color: #eee;
		margin: .5rem 0;
		padding: 0 1rem;
		text-align: center;
		font-size: 1.3rem;
		height: 2.4rem;
		line-height: 2.4rem;
		border: 2px outset #ccc;
		border-radius: .5rem;
		box-shadow: 5px 5px 3px cornflowerblue;
		background: cornflowerblue;
	}
	[id^="publish-"]{    /*publish-aishang,publish-surround,publish-record*/
		width: 98%;
		margin: 0 auto;
	}
</style>

