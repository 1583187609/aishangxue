<template>
	<div id="show">
		<main-nav @toChangeLayout="changeLayout" @getInfoClassify="getInfoClassify"></main-nav>
		<div class="wrap">
			<div class="left-box" :style="layoutType=='fixed'?{height:'100%'}:{height:'auto',maxHeight:leftBoxMaxHeight+'px'}">
				<div v-for="(ite,inde) in info">
					<block-imgtext :class="inde==activeBlockId?'active-block':''" :ite="ite" :inde="inde" v-if="ite.type=='imt'" @changeIndex="changeBlockActiveIndex"></block-imgtext>
					<block-video :class="inde==activeBlockId?'active-block':''" :ite="ite" :inde="inde" v-else-if="ite.type=='vid'" @changeIndex="changeBlockActiveIndex"></block-video>
					<block-ask :class="inde==activeBlockId?'active-block':''" :ite="ite" :inde="inde" v-else-if="ite.type=='ask'" @changeIndex="changeBlockActiveIndex"></block-ask>
					<block-adv :class="inde==activeBlockId?'active-block':''" :ite="ite" :inde="inde" v-else-if="ite.type=='adv'" @changeIndex="changeBlockActiveIndex"></block-adv>
					<div class="adv-bottom-line"  v-if="ite.type=='adv'"></div>
					<button id="load-more" @click="loadMore" v-if="inde==info.length-1">点击加载更多</button>
				</div>
			</div>
			<div class="right-box">
				<div id="content" ref="content" :style="layoutType=='fixed'?{overflow:'auto scroll',height:'100%'}:{overflow:'auto',height:'auto'}">
					<!--  -->
					<div class="cont-title">
						<div v-if="currInfo.type=='vid' || currInfo.type=='imt'">
							<h1>{{currInfo.title}}</h1>
							<address><span>原创</span><time>2019-03-25 16:15:04</time></address>
						</div>
						<div v-else-if="currInfo.type=='ask'">
							<h1>{{currInfo.question}}</h1>
							<address>发布于<time>2019-03-25 16:15:04</time></address>
						</div>
						<div v-else-if="currInfo.type=='adv'">
							<h1>{{currInfo.title}}</h1>
						</div>
					</div>
					<!--  -->
					<div class="cont-body">
						<div v-if="currInfo.type=='imt'" v-html="currInfo.imgtext"></div>
						<div v-if="currInfo.type=='vid'">
							<video :src="'http://localhost:81/video/'+currInfo.video" controls>您的浏览器不支持video标签</video>
						</div>
					</div>
					<!--  -->
					<div class="cont-separate">
						<h2 class="separate-h2" v-if="currInfo.type=='vid' || currInfo.type=='imt'">
							<b>评论</b>
							<button @click="updateComment">更新评论</button>
						</h2>
						<h2 class="separate-h2" v-else-if="currInfo.type=='ask'">
							<b>回答</b>
							<button @click="updateAnswer">更新回答</button>
						</h2>
					</div>
					<!--  -->
					<div class="comment-area" v-if="currInfo.type=='vid' || currInfo.type=='imt'">
						<div id="write-comment">
							<textarea placeholder="写下你的评论……" @focus="textAreaIsGetFocus=true" :style="textAreaIsGetFocus?textAreaFocusStyle:textAreaBlurStyle" v-model="commentVal"></textarea>
							<div id="btn-box"><button @click="publishComment">发表评论</button></div>
						</div>
						<div v-if="commentInfo.length>0">
							<net-comment :ite="item" v-for="item in commentInfo"></net-comment>
							<button class="look-more">点击查看更多</button>
						</div>
						<div v-if="commentInfo.length==0">评论区空空如也~快来评论吧~</div>
					</div>
					<!--  -->
					<div class="answer-area" v-if="currInfo.type=='ask'">
						<div v-if="answerInfo.length>0">
							<net-comment :ite="item" v-for="item in answerInfo"></net-comment>
							<button class="look-more">点击查看更多</button>
						</div>
						<div v-if="answerInfo.length==0">暂时还没有人回答此问题哦~请您来回答一个吧~</div>
					</div>
					
				</div>
			</div>
			<div id="share" :style="layoutType=='fixed'?{right:'17px'}:{right:'0',top:(isScrollStop?documentScrollTop:documentScrollTop+scrollDistance)+'px'}">
				<div id="share-info" v-if="currInfo.type!='adv'">
					<div class="author-about">
						<router-link to="/"><img :src="currAuthorInfo.head_img?('http://localhost:81/headimg/'+currAuthorInfo.head_img):''" /></router-link>
						<ul>
							<li id="nickname">
								<b>昵称：</b>
								<!-- <el-tooltip :content="currAuthorInfo.nickname" placement="bottom-end"> -->
									<span :title="currAuthorInfo.nickname">{{currAuthorInfo.nickname}}</span>
								<!-- </el-tooltip> -->
							</li>
							<li id="title"><b>头衔：</b><span>{{currAuthorInfo.title}}</span></li>
							<li id="fans"><b>粉丝：</b><span>{{currAuthorInfo.fans}}</span></li>
							<li id="produce">
								<b>个人说明：</b>
								<span :title="currAuthorInfo.produce">{{currAuthorInfo.produce}}</span>
							</li>
						</ul>
						<button>+关注</button>
					</div>
					<ul class="article-about">
						<li><el-button type="primary"><i :class="isCollect?'el-icon-star-on':'el-icon-star-off'"></i> 收藏</el-button></li>
						<li>
							<el-popover ref="shareWays" placement="left" trigger="hover">
								<ul id="share-ul">
									<li>微信</li>
									<li>微博</li>
									<li>QQ</li>
									<li>爱尚空间</li>
								</ul>
							</el-popover>
							<el-button type="primary" v-popover:shareWays><i class="el-icon-share"></i> 分享</el-button>
						</li>
						<li><el-button type="primary">赞({{currInfo.like}})</el-button></li>
						<li><el-button type="primary">踩({{currInfo.hate}})</el-button></li>
						<li><el-button type="primary">评论({{commentInfo.length}})</el-button></li>
					</ul>
				</div>
				<div id="share-adv" v-if="currInfo.type=='adv'">
					这里是广告相关的链接推荐内容，暂时不做安排，待日后完善
				</div>
			</div>
		</div>
		<!-- <help-feedback></help-feedback> -->
	</div>
</template>

<script>
	import MainNav from "../components/MainNav.vue"
	import BlockImgtext from "../components/BlockImgtext"
	import BlockVideo from "../components/BlockVideo"
	import BlockAsk from "../components/BlockAsk"
	import BlockAdv from "../components/BlockAdv"
	import NetComment from "../components/NetComment"
	// import NetAnswer from "../components/NetAnswer"
	import HelpFeedback from "../components/HelpFeedback"
	let scrollStartTop = 0;
	let scrollEndTop = 0;
	let timer = null; // 定时器
	export default {
		components:{
			MainNav,NetComment,HelpFeedback,
			BlockImgtext,BlockVideo,BlockAsk,BlockAdv
		},
		data() {
			return {
				info:[],
				currInfo:{},
				currAuthorInfo:{},
				isCollect: false,
				layoutType:"",
				scrollDistance:0,
				isScrollStop:true,   /*document滚动是否结束*/
				activeBlockId:0,
				leftBoxMaxHeight:0,
				documentScrollTop:0,
				textAreaIsGetFocus:false,
				textAreaFocusStyle:{
					height:"10rem",
					lineHeight:"1.8rem"
				},
				textAreaBlurStyle:{
					height:"2.5rem",
					lineHeight:"2.5rem"
				},
				commentVal:"",    //用户评论输入的内容
				commentInfo:[],   //从数据库获取到的评论数据
				getCommentCount:0,    //第几次获取评论数据
				answerInfo:[]
			};
		},
		methods:{
			//改变页面布局方式
			changeLayout(){
				this.layoutType=this.$store.state.layoutType;
			},
			getInfoClassify(info){
				this.loadInfo(info)
			},
			//加载信息：推荐、常识、军事、生活等类的信息
			loadInfo(infoClassify){
				let that=this;
				let currKey="";
				let currVal={};
				let infoParams=this.$store.state.infoParams;
				this.$store.state.infoClassify=infoClassify;
				for(let key in infoParams){
					if(infoParams[key].name==infoClassify){
						currKey=key;
						currVal=infoParams[key];
					}
				}
				// if(!currVal.info){
					that.$axios.get('http://localhost:81/getInfo',{params:{
						startIndex: currVal.startIndex,
						getLength: currVal.getLength,
						infoClassify: infoClassify
					}})
					.then(function (response) {
						let arr=[];
						let data=response.data;
						for(let i=0;i<data.length;i++){
							for(let j=0;j<data[i].length;j++){
								arr.push(data[i][j]);
							}
						}
						arr.sort(function(){return Math.random()>.5 ? -1 : 1;});
						for(let i=0;i<arr.length;i++){
							that.$store.state.infoParams[currKey].info.push(arr[i]);
						}
						that.$store.state.currInfoParams=that.$store.state.infoParams[currKey];
						that.info=that.$store.state.infoParams[currKey].info;
						that.currInfo=that.info[0];
						console.log("所有爱尚信息：",that.info);
						console.log("当前爱尚信息及其id：",that.currInfo,that.currInfo.id)
						if(that.currInfo.type=="vid" || that.currInfo.type=="imt"){that.loadComment()}
						else if(that.currInfo.type=="ask"){that.loadAnswer()}
						that.loadAuthorInfo();
						
					})
					.catch(function (error) {console.log(error);});
				// }
			},
			//加载更多信息
			loadMore(){
				let key=this.$store.state.currInfoParams.key;
				let advIndex=this.$store.state.advIndex;
				let startIndex=this.$store.state.infoParams[key].startIndex;
				let getLength=this.$store.state.infoParams[key].getLength;
				if(startIndex.length==3){
					for(let i=0;i<4;i++){
						if(i<3){
							this.$store.state.infoParams[key].startIndex[i]=startIndex[i]+getLength[i];
						}
						else{
							this.$store.state.infoParams[key].startIndex.push(advIndex)
						}
						this.$store.state.infoParams[key].getLength=[4,4,1,1]
					}
				}else if(startIndex.length==4){
					for(let i=0;i<3;i++){
						this.$store.state.infoParams[key].startIndex[i]=startIndex[i]+getLength[i];
						this.$store.state.infoParams[key].getLength=[5,4,1]
					}
				}
				this.loadInfo(this.$store.state.infoClassify);
				this.advIndex++;
			},
			loadComment(){
				let that=this;
				that.$axios.get('http://localhost:81/getShowComment',{params:{
					startIndex: 0+that.getCommentCount*5,
					getLength: 5,
					currInfoId: that.currInfo.id,
					currInfoType: that.currInfo.type
				}})
				.then(function (response) {
					if(response.data=="no any comment!"){
						that.commentInfo=[];
					}
					else{
						that.commentInfo=response.data;
						console.log("评论信息：",that.commentInfo)
					}
				})
				.catch(function (error) {console.log(error);});
			},
			//发布评论
			publishComment(){
				let that=this;
				if(this.$store.state.isLogin){
					if(this.commentVal.length>90){alert("不能超过90个字符！")}
					else if(this.commentVal.length==0){alert("评论内容不能为空！")}
					else{
						this.$axios.get('http://localhost:81/publishShowComment',{
							params: {
								"author_headimg":that.$store.state.loginUserInfo.head_img,
								"author_nickname":that.$store.state.loginUserInfo.nickname,
								"author_number":that.$store.state.loginUserInfo.number,
								"comment": that.commentVal,
								"currInfoType":that.currInfo.type,
								"currInfoId": that.currInfo.id
							}
						})
						.then(function (response) {
							if(response.data=="success"){
								that.$message('评论发布成功');
								that.updateComment();
							}
							else{that.$message.error('评论发布失败');}
						})
						.catch(function (error) {console.log(error);});
					}
				}else{
					let pagePath=window.location.href.split("/#")[1];
					this.$store.state.rememberPagePath=pagePath;
					alert("请先登录")
				}
			},
			updateComment(){
				let that=this;
				this.$axios.get('http://localhost:81/updateShowComment',{
					params: {
						"currInfoType":this.currInfo.type,
						"currInfoId": this.currInfo.id
					}
				})
				.then(function (response) {
					that.commentInfo=response.data;
				})
				.catch(function (error) {console.log(error);});
			},
			loadAnswer(){
				let that=this;
				if(this.currInfo.type=='ask'){      //请求回答的数据
					this.$axios.get('http://localhost:81/getShowAnswer',{
						params: {"questionId": this.currInfo.id}
					})
					.then(function (response) {
						if(response.data=="no any answer!"){that.answerInfo=[];}
						else{that.answerInfo=response.data;}
					})
					.catch(function (error) {console.log(error);});
				}
			},
			changeBlockActiveIndex(){
				let that=this;
				this.activeBlockId=this.$route.query.index;
				this.currInfo=this.info[this.activeBlockId];
				console.log("最新当前信息",this.currInfo)
				if(that.currInfo.type=="vid" || that.currInfo.type=="imt"){that.loadComment()}
				else if(that.currInfo.type=="ask"){that.loadAnswer()}
				that.loadAuthorInfo();
			},
			loadAuthorInfo(){
				console.log("获取作者信息")
				let that=this;
				this.$axios.get('http://localhost:81/getAuthorInfo',{
					params: {"authorNumber": that.currInfo.author_number}
				})
				.then(function (response) {
					that.currAuthorInfo=response.data;
					console.log("当前作者信息：",that.currAuthorInfo)
				})
				.catch(function (error) {console.log(error);});
			},
			updateAnswer(){
				alert("暂未开通更新回答功能")
			}
			
		},
		computed:{
			
		},
		mounted() {
			let that=this;
			this.layoutType=this.$store.state.layoutType;
			this.leftBoxMaxHeight=this.$refs.content.offsetHeight-this.$store.state.rem*20;
			document.onscroll=function(){
				that.isScrollStop=false;
				that.documentScrollTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
				clearTimeout(timer);
				timer = setTimeout(isScrollStop, 500);
				scrollStartTop=that.documentScrollTop;
				that.scrollDistance=scrollEndTop-scrollStartTop;
				function isScrollStop(){
					scrollEndTop = that.documentScrollTop;
				    if(scrollEndTop == scrollStartTop){
					  that.isScrollStop=true;
				    }
				}
			};
			//初次加载页面和刷新页面时加载信息
			if(localStorage.getItem("infoClassify")){this.loadInfo(localStorage.getItem("infoClassify"));}
			else{this.loadInfo("推荐");}
		}
	}
</script>

<style scoped>
	.wrap{
		
	}
	.active-block{
		background: #eef;
	}
	.adv-bottom-line{
		height: 1px;
		background: lightblue;
		margin-top: .5rem;
	}
	.left-box{
		position: absolute;
		left: 0;
		width: 26%;
		box-sizing: border-box;
		overflow: hidden scroll;
		background: #fff;
	}
	#load-more{
		display: block;
		width: 100%;
		border: 0;
		height: 2rem;
		margin: .5rem 0;
		font-size: 1.14rem;
		border-radius: .5rem;
		background: skyblue;
	}
	#load-more:hover{
		color: #fff;
		background: deepskyblue;
	}
	.right-box{
		position: absolute;
		left: -moz-calc(26% - 1.4rem); 
		left: -webkit-calc(26% - 1.4rem); 
		left: calc(26% - 1.4rem);
		font-size: 16px;
		line-height: 30px;
		width: -moz-calc(74% + 1.4rem); 
		width: -webkit-calc(74% + 1.4rem); 
		width: calc(74% + 1.4rem);
		height: 100%;
		background: #fff;
	}
	#content{
		position: absolute;
		left: 0;
		width: 100%;
		padding: 0 17% 0 6%;
		box-sizing: border-box;
		overflow: auto scroll;
		/* background: gray; */
	}
	#content h1{
		margin: 0;
		line-height: 2.4rem;
		padding: 1.3rem 0 .7rem;
		/* background: #000080; */
	}
	#content address{
		color: #666;
		font-size: 1rem;
		font-style: normal;
		height: 1.4rem;
		line-height: 1.4rem;
		margin-bottom: 1.2rem;
		/* background: pink; */
	}
	#content address span{
		display: inline-block;
		padding: 0 .5rem;
		margin-right: 1rem;
		height: 1.2rem;
		line-height: 1.2rem;
		border: 1px solid #ccc;
		border-radius: .3rem;
	}
	#content address time{
		display: inline-block;
	}
	#content .cont-body{

	}
	#content .cont-body img{
		text-align: center !!important;
	}
	.separate-h2{
		color: steelblue;
		margin-top: 6rem;
		font: normal 1.5rem "微软雅黑";
		padding: 3px 5px;
		border-bottom: 1px solid skyblue;
	}
	.separate-h2 button{
		color: steelblue;
		float: right;
		border: none;
		font-size: 1.1rem;
		margin-top: .5rem;
		padding: 0;
		background: transparent;
	}
	.separate-h2 button:hover{
		color: deepskyblue;
	}
	.comment-area{
		width: 100%;
		margin: 1.5rem 0;
	}
	#write-comment{
		position: relative;
		width: 90%;
		margin: 0 auto 2rem;
		box-sizing: border-box;
		border: 1px solid lightblue;
		border-radius: .4rem;
		overflow: hidden;
	}
	#write-comment:hover{
		border: 1px solid deepskyblue;
	}
	#write-comment textarea{
		display: block;
		width: 100%;
		border: 0;
		min-height: 2.5rem;
		resize: vertical;
		padding: 0 .5rem;
		box-sizing: border-box;
		font: normal 1.14rem/2rem "微软雅黑";
	}
	#write-comment #btn-box{
		position: absolute;
		right: 0;
		bottom: 0;
		height: 2.5rem;
		/* background: #eee; */
	}
	#write-comment button{
		color: #fff;
		float: right;
		font: 700 1.14rem/2.5rem "微软雅黑";
		height: 2.5rem;
		border: 0;
		background: lightblue;
	}
	#write-comment button:hover{
		background: deepskyblue;
	}
	.look-more{
		display: block;
		margin-top: 1rem;
		width: 100%;
		font-size: 1.14rem;
		height: 2.5rem;
		background: lightblue;
		border: 0;
		border-radius: .5rem;
	}
	.look-more:hover{
		color: #fff;
		background: deepskyblue;
	}
	#share{
		position: absolute;
		right: 17px;
		width: 10%;
		height: 100%;
		background: #eef;
	}
	.author-about{
		width: 100%;
		padding: .7rem 0 1.5rem;
		margin-bottom: 1.5rem;
		text-align: center;
	}
	.author-about ul{
		text-align: left;
		padding: 0 .5rem;
	}
	.author-about ul li{
		line-height: 1.2rem;
		margin: .3rem 0;
	}
	.author-about #nickname{
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	.author-about #nickname .el-tooltip{
		/* line-height: 100px; */
	}
	.author-about #produce{
		line-height: 1.5rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
		overflow: hidden;
	}
	.author-about b{    /*头衔:领域专家等*/
		/* display: block;
		width: 100%;
		height: 2.5rem;
		line-height: 2.5rem;
		font-size: 1.1rem; */
	}
	.author-about img{    /*创作者头像*/
		width: 5rem;
		height: 5rem;
		border-radius: 50%;
		border: 1px solid skyblue;
		box-sizing: border-box;
		margin: 0 auto;
	}
	.author-about img:hover{
		border: 0;
	}
	.author-about a{      /*创作者昵称*/
	    color: #000;
		display: block;
		width: 100%;
		font-size:1.14rem;
		font-weight: 900;
	}
	.author-about span{   /*创作者的粉丝*/
		/* display: block;
		width: 100%;
		height: 1.5rem;
		line-height: 1.5rem;
		font-size:.8rem; */
	}
	.author-about button{  /*加关注*/
		color: #fff;
		height: 2.2rem;
		font: 800 1.1rem/2.2rem "微软雅黑";
		margin-top: .6rem;
		border: 0;
		padding: 0 1rem;
		border-radius: .4rem;
		background: #f00;
	}
	.author-about button:hover{
		background: #e00;
	}
	/* #please-login{
		color: #fff;
		font: 800 1.8rem/13rem "微软雅黑";
		position: absolute;
		left: 0;
		top: 0;
		height: 100%;
		width: 100%;
		background: rgba(100,100,100,.8);
	} */
	.article-about li{
		/* font-size: 1rem;
		cursor: pointer;
		text-align: center;
		width: 6rem;
		padding: .1rem 0;
		line-height: 2.4rem;
		margin: 5px auto;
		border-radius: .5rem;*/
		border-radius: .5rem;
		margin: .5rem .8rem;
		background: #ccc; 
	}
	.article-about .el-button{
		width: 100%;
		padding: .8rem .5rem;
		border-radius: .5rem;
		text-align: left;
	}
	.article-about #share-ul{
		position: absolute;
		right: 8rem;
		top: -3rem;
		height: 8rem;
		width: 10rem;
		background: yellow;
	}
	#share-ul li{
		cursor: pointer;
		line-height: 2rem;
		padding: 0 .5rem;
		border-radius: .2rem;
		background: none;
	}
	#share-ul li:hover{
		color: #fff;
		background: deepskyblue;
	}
</style>
