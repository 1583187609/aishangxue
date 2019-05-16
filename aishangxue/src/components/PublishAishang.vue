	<template>
	<div id="publish-aishang">
		<div v-if="classify=='question'" id="question">
			<form>
				<div class="condition">
					<label class="info-classify">信息类型:
						<input type="text" name="classify" placeholder="可多选" v-model="questionClassify" readonly />
						<select v-model="questionClassify" multiple>
							<option v-for="item in $store.state.allselect">{{item}}</option>
						</select>
					</label>
				</div>
				<textarea :class="questionOver?'colorRed':''" name="question" placeholder="请输入您想问的问题……" @input="countQuestionLength(250)" v-model="questionVal"></textarea>
				<div class="bottom clear">
					<span class="text-length">{{questionVal.length}}/250</span>
					<marquee :class="questionOver?'colorRed':''">{{questionOver?"字符个数已经超出最大限制，将不能正常发布":"请不要超过250字，否则将不能正常发布"}}</marquee>
					<input type="submit" value="发布" @click.prevent="publishQuestion" />
				</div>
			</form>
		</div>
		<div v-else-if="classify=='answer'" id="answer">
			<form>
				<div class="condition clear">
					<label class="info-classify">信息类型:
						<input type="text" name="classify" placeholder="可多选" v-model="answerClassify" readonly/>
						<select v-model="answerClassify" multiple>
							<option v-for="item in $store.state.allselect">{{item}}</option>
						</select>
					</label>
					<label id="key-words">关键字:<input type="text" name="keyWords" placeholder="请输入关键字" /></label>
					<label id="publish-time">发布时间:
						<select>
							<option>一天以内</option>
							<option>一周以内</option>
							<option>一月以内</option>
						</select>
					</label>
					<label id="user-title">用户头衔:
						<select name="userTitle">
							<option v-for="item in $store.state.userTitle">{{item}}</option>
						</select>
					</label>
					<input type="submit" value="一键筛选" @click.prevent="filterAnswer" />
				</div>
			</form>
			<div id="items-box">
				<div v-for="(item,index) in answersData" class="answer-item">
					<div class="head-box clear">
						<img src="../assets/img/user_touxiang.jpg" />
						<div class="middle-box">
							<div class="nickname-box"><b>{{item.author_nickname}}</b><span>{{item.author_title}}</span></div>
							<div class="labels-box">
								<i v-for="ite in item.classify.split(',')">{{ite}}</i>
								<span>{{agoTime}}</span>
							</div>
						</div>
						<button class="reply-btn" @click.prevent="goReply(index)">回答</button>
					</div>
					<div class="ask-box">{{item.question}}</div>
				</div>
			</div>
			<form class="reply-box" v-if="replyBoxIsShow" v-drag>
				<button class="close" @click="closeReply">✖</button>
				<div class="title drag-area">来自 <router-link to="/">{{currentAnswer.author_nickname}}</router-link> 的提问</div>
				<div class="question"><b>【问题】</b>{{currentAnswer.question}}</div>
				<textarea class="reply" name="answer" placeholder="请在这里输入您的回答" @input="countAnswerLength(1500)" v-model="answerVal"></textarea>
				<div class="reply-box-bottom">
					<span class="text-length">{{answerVal.length}}/1500</span>
					<marquee :class="answerOver?'colorRed':''">{{answerOver?"字符个数已经超出最大限制，将不能正常发布":"请不要超过1500字，否则将不能正常发布"}}</marquee>
					<input type="submit" value="提交回答" @click.prevent="publishAnswer" />
				</div>
			</form>
		</div>
		<div v-else-if="classify=='imgText'" id="img-text">
			<form>
				<div class="condition">
					<label class="info-classify">信息类型:
						<input type="text" name="classify" placeholder="可多选" v-model="imgTextClassify" readonly/>
						<select v-model="imgTextClassify" multiple>
							<option v-for="item in $store.state.allselect">{{item}}</option>
						</select>
					</label>
				</div>
				<div id="article-edit">
					<div class="title"><b>标题</b><input type="text" placeholder="请输入您的标题" name="title" @input="$limitLength($event,25)" v-model="imgTextTitle" /></div>
					<wang-editor @getEditContent="getEditContent"></wang-editor>
					<div class="bottom clear">
						<span class="text-length">{{imgTextValLength}}/2500</span>
						<marquee :class="imgTextOver?'colorRed':''">{{imgTextOver?"字符个数已经超出最大限制，将不能正常发布":"请不要超过2500字，否则将不能正常发布"}}</marquee>
						<input type="submit" value="发布" @click.prevent="publishImgText" />
						<input type="button" value="预览" @click="preLook" />
					</div>
				</div>
			</form>
		</div>
		<div v-else-if="classify=='video'" id="video">
			<div>
				<form class="condition">
					<label class="info-classify">信息类型:
						<input type="text" name="classify" placeholder="可多选" v-model="videoClassify" readonly/>
						<select v-model="videoClassify" multiple>
							<option v-for="item in $store.state.allselect">{{item}}</option>
						</select>
					</label>
				</form>
				<form id="video-edit">
					<div class="title">
						<b>标题</b><input type="text" placeholder="请输入您的标题" name="title" v-model="videoTitle" />
					</div>
					<div class="add-wraper clear">
						<div class="video-box" v-if="videoSrc">
							<video :src="videoSrc" controls>您的浏览器不支持video</video>
							<div class="video-cover" v-if="isPublishVideoing">
								<div class="video-progress">{{videoProgress}}</div>
							</div>
						</div>
						<label class="add-box" v-if="!videoSrc">+<input type="file" name="video" @change="addVideo($event)"/></label>
					</div>
					<div class="bottom clear">
						<marquee>一次只能上传一个视频，若需要上传多个视频，请在“发布图文”中附上多个视频的链接地址</marquee>
						<input type="submit" value="发布" @click.prevent="publishVideo"/>
						<input type="button" value="更换" @click.prevent="alterVideo" v-if="videoSrc" />
					</div>
				</form>
			</div>
		</div>
	</div>
</template>

<script>
	import WangEditor from "./WangEditor.vue"
	import qs from 'qs'; //解决axios中以字符串发送数据的问题
	export default {
		props:["classify","answersData","agoTime"],
		components:{
			WangEditor
		},
		data() {
			return {
				replyBoxIsShow:false,
				questionClassify:["常识"],
				questionVal:"",
				questionOver:false,
				currentAnswer:this.answersData[0]   ,   //当前选中待回答的问题
				answerClassify:["常识"],
				answerVal:"",
				answerOver:false,
				imgTextClassify:["常识"],
				imgTextValText:"",
				imgTextValHtml:"",
				imgTextTitle:"图文中的标题",
				isPublishVideoing:false,
				videoClassify:["常识"],
				videoTitle:"这是一个视频标题的示例",
				videoFormData:"",
				videoSrc:"",
				videoSize:0,
				videoProgress: "0%"
			};
		},
		methods:{
			countQuestionLength(max){
				if(this.questionVal.length>max){this.questionOver=true;}
				else{this.questionOver=false;}
			},
			countAnswerLength(max){
				if(this.answerVal.length>max){this.answerOver=true;}
				else{this.answerOver=false;}
			},
			publishQuestion(){
				let that=this;
				if(this.$store.state.isLogin){
					if(this.questionOver){alert("字符个数超出最大限制！")}
					else if(this.questionVal.length==0){alert("问题不能为空！")}
					else{
						let confirm=window.confirm("选择合理的信息类型将更有助于信息检索\n您当前的信息类型为："+this.questionClassify)
						if(confirm){
							this.$axios.get('http://localhost:81/publishQuestion',{
								params: {
									"classify": this.questionClassify,
									"question":this.questionVal,
									"author_headimg":this.$store.state.loginUserInfo.head_img,
									"author_nickname":this.$store.state.loginUserInfo.nickname,
									"author_title":this.$store.state.loginUserInfo.title,
									"author_number":this.$store.state.loginUserInfo.number
								}
							})
							.then(function (response) {
								if(response.data=="success"){that.$message('问题发布成功');}
								else{that.$message.error('问题发布失败');}
							})
							.catch(function (error) {console.log(error);});
						}
					}
				}else{
					let pagePath=window.location.href.split("/#")[1];
					this.$store.state.rememberPagePath=pagePath;
					alert("请先登录")
				}
			},
			goReply(index){
				this.replyBoxIsShow=true;
				this.currentAnswer=this.answersData[index];
			},
			closeReply(){
				this.replyBoxIsShow=false;
			},
			publishAnswer(){
				let that=this;
				if(this.$store.state.isLogin){
					if(this.answerOver){alert("字符个数超出最大限制！")}
					else if(this.answerVal.length==0){alert("问题不能为空！")}
					else{
						this.$axios.get('http://localhost:81/publishAnswer',{
							params: {
								"author_headimg":that.$store.state.loginUserInfo.head_img,
								"author_nickname":that.$store.state.loginUserInfo.nickname,
								"author_number":that.$store.state.loginUserInfo.number,
								"answer": that.answerVal,
								"questionId": that.currentAnswer.id
							}
						})
						.then(function (response) {
							if(response.data=="success"){that.$message('回答发布成功');}
							else{that.$message.error('回答发布失败');}
						})
						.catch(function (error) {console.log(error);});
					}
				}else{
					let pagePath=window.location.href.split("/#")[1];
					this.$store.state.rememberPagePath=pagePath;
					alert("请先登录")
				}
			},
			filterAnswer(){
				console.log("过滤问题")
			},
			getEditContent(text,html){
				this.imgTextValText=text;
				this.imgTextValHtml=html;
			},
			preLook(){
				alert("暂未开通预览功能")
			},
			publishImgText(){
				let that=this;
				if(this.$store.state.isLogin){
					if(this.imgTextTitle.trim()==""){alert("标题不能为空！")}
					else if(this.imgTextOver){alert("字符个数超出最大限制！")}
					else if(this.imgTextValText.length==0 && this.imgTextValHtml.indexOf("<img src=")==-1){alert("图文信息不能为空！")}
					else{
						let confirm=window.confirm("选择合理的信息类型将更有助于信息检索\n您当前的信息类型为："+this.imgTextClassify)
						if(confirm){
							this.$axios.post('http://localhost:81/publishImgText', qs.stringify({
								"classify": that.imgTextClassify,
								"title": that.imgTextTitle,
								"imgtext": that.imgTextValHtml,
								"author_headimg": that.$store.state.loginUserInfo.head_img,
								"author_nickname": that.$store.state.loginUserInfo.nickname,
								"author_title":this.$store.state.loginUserInfo.title,
								"author_number": that.$store.state.loginUserInfo.number
							}))
							.then(function (response) {
								console.log(response)
								if(response.data=="success"){that.$message('图文信息发布成功');}
								else{that.$message.error('图文信息发布失败');}
							})
							.catch(function (error) {console.log(error);});
						}
					}
				}else{
					let pagePath=window.location.href.split("/#")[1];
					this.$store.state.rememberPagePath=pagePath;
					alert("请先登录")
				}
			},
			addVideo(e){
				let vm=this;
				let fileSize=0;
				let that=e.target;
				let files = that.files ? that.files : [];
				fileSize=files[0].size/1024/1024;    //文件大小，单位：M
				fileSize=fileSize.toFixed(1);
				this.videoSize=fileSize;
				if(fileSize>50){
					this.$message.error("视频大小不能超过50M")
				}else{
					let fd = new FormData();
					fd.append("video", files[0]);
					fd.append("classify",vm.videoClassify);
					fd.append("title",vm.videoTitle);
					fd.append("author_headimg",vm.$store.state.loginUserInfo.head_img);
					fd.append("author_nickname",vm.$store.state.loginUserInfo.nickname);
					fd.append("author_title",vm.$store.state.loginUserInfo.title);
					fd.append("author_number",vm.$store.state.loginUserInfo.number);
					this.videoFormData=fd;
					let localUrl=window.URL.createObjectURL(files[0]);    //获取文件的本地地址
					this.videoSrc=localUrl;
				}
			},
			alterVideo(){
				this.videoSrc="";
				this.videoFormData="";
				this.videoProgress="0%";
				this.isPublishVideoing=false;
			},
			publishVideo(){
				let that=this;
				if(this.$store.state.isLogin){
					if(this.videoTitle.trim()==""){alert("标题不能为空！")}
					else if(this.videoFormData==""){
						alert("请先选择要上传的视频文件！")
					}else{
						let confirm=window.confirm("选择合理的信息类型将更有助于信息检索\n您当前的信息类型为："+this.videoClassify)
						if(confirm){
							this.isPublishVideoing=true;
							this.$axios.post('http://localhost:81/uploadVideo',this.videoFormData,{
							    onUploadProgress: progressEvent => {
								    that.videoProgress = (progressEvent.loaded / progressEvent.total * 100 | 0)+"%";
							    }
							})
							.then(function (response) {
								if(response.data=="success"){that.$message('视频发布成功');}
								else{that.$message.error('视频发布失败');}
							})
							.catch(function (error) {console.log(error);});
						}
					}
				}else{
					let pagePath=window.location.href.split("/#")[1];
					this.$store.state.rememberPagePath=pagePath;
					alert("请先登录")
				}
			},
		},
		computed:{
			imgTextValLength(){
				let imgLength=0;
				let matchEnd=this.imgTextValHtml.toString().match(/img src/g);
				if(matchEnd){imgLength=matchEnd.length;}
				return this.imgTextValText.length+imgLength;
			},
			imgTextOver(){
				if(this.imgTextValLength>2500){return true;}
				else{return false;}
			}
		},
		mounted() {
			
		}
	}
</script>

<style scoped>
	/*****************public*******************/
	.colorRed{
		color: red !important;
	}
	#question,#answer,#img-text,#video{
		border: 1px solid blue;
		border-radius: .5rem;
		overflow: hidden;
	}
	.info-classify{
		position: relative;
	}
	.info-classify select{
		display: none;
		position: absolute;
		top: 2.5rem;
		left: 4.5rem;
		width: 5rem;
		height: 10rem;
	}
	.info-classify:hover select{
		display: block;
		z-index: 100;
	}
	.title{
		height: 2.4rem;
		line-height: 2.4rem;
		font-size: 1.2rem;
		/* border-bottom: 1px solid #ccc; */
	}
	.title b{
		display: inline-block;
		width: 4rem;
		text-align: center;
		background: #efefef;
	}
	.title input{
		border: 0;
		padding: 0 .5rem;
		height: 100%;
		font: 500 1.14rem/3rem "微软雅黑";
		vertical-align: top;
		width: -moz-calc(100% - 5rem); 
		width: -webkit-calc(100% - 5rem); 
		width: calc(100% - 5rem);
		border: 0;
		background: aliceblue;
	}
	.bottom{
		height: 3rem;
		background: #efefef;
	}
	.bottom .text-length{
		float: left;
		height: 3rem;
		line-height:3rem;
		width: 8rem;
		font-size: 1.14rem;
		text-align: center;
		background: lightblue;
	}
	marquee{
		color: #666;
		float: left;
	}
	.bottom marquee{
		height: 3rem;
		font-size: 1.14rem;
		line-height:3rem;
		width: calc(100% - 20rem);
		width: -webkit-calc(100% - 20rem);
		width: -moz-calc(100% - 20rem);
		margin-left: 2rem;
	}
	.reply-box marquee{
		height: 2.4rem;
		font-size: 1.14rem;
		line-height:2.4rem;
		width: calc(100% - 15rem);
		width: -webkit-calc(100% - 15rem);
		width: -moz-calc(100% - 15rem);
		margin-left: .5rem;
	}
	#img-text marquee{
		height: 3rem;
		font-size: 1.14rem;
		line-height:3rem;
		width: calc(100% - 26.5rem);
		width: -webkit-calc(100% - 26.5rem);
		width: -moz-calc(100% - 26.5rem);
		margin-left: 1rem;
	}
	#video marquee{
		height: 3rem;
		font-size: 1.14rem;
		line-height:3rem;
		width: calc(100% - 20rem);
		width: -webkit-calc(100% - 20rem);
		width: -moz-calc(100% - 20rem);
		margin-left: 2rem;
	}
	.bottom [type="submit"],.bottom [type="button"]{
		color: #333;
		float: right;
		height:3rem;
		width: 8rem;
		margin-left: .5rem;
		font-size: 1.14rem;
		border: 0;
		background: lightblue;
	}
	.bottom [type="submit"]:hover,.bottom [type="button"]:hover{
		color: #000;
		font-weight: 500;
		background: skyblue;
	}
	/****************question*******************/
	#question textarea{
		display: block;
		width: 100%;
		padding: .3rem 1rem;
		border: 0;
		font: normal 1.14rem/1.8rem "微软雅黑";
		height: 15rem;
		resize: none;
	}
	/***************answer********************/
	#answer label{
		float: left;
		margin-right: 2rem;
	}
	#items-box{
		display: flex;
		justify-content: flex-start;
		flex-wrap: wrap;
	}
	.answer-item{
		width: 31.33%;
		border: 1px solid #ccc;
		border-radius: .5rem;
		margin: .8rem 1%;
		box-sizing: border-box;
		overflow: hidden;
		padding-bottom: .3rem;
		background: #eed;
	}
	.head-box{
		position: relative;
		height: 3rem;
		background: lightblue;
	}
	.head-box img{
		position: absolute;
		left: .2rem;
		top: .2rem;
		height: 2.6rem;
		width: 2.6rem;
		border-radius: 50%;
	}
	.head-box .middle-box{
		margin: 0 3.5rem 0 3rem;
		box-sizing: border-box;
		padding-left: .5rem;
	}
	.head-box .nickname-box{
		display: block;
		height:1.6rem;
		font-size: 1.05rem;
		line-height: 1.6rem;
	}
	.nickname-box span{
		float: right;
		font-size: 1rem;
	}
	.head-box .labels-box{
		color: #666;
		display: block;
		height:1.4rem;
		font-size: .8rem;
		line-height: 1.4rem;
	}
	.head-box .labels-box i{
		display: inline-block;
		margin-right: .5rem;
		font-style: normal;
		font-weight: 900;
	}
	.head-box .labels-box span{
		float: right;
	}
	.head-box .reply-btn{
		position: absolute;
		top: 0;
		right: 0;
		height: 3rem;
		width: 3rem;
		border: 0;
		font-size: 1.05rem;
		background: skyblue;
	}
	.head-box .reply-btn:hover{
		font-weight: 700;
	}
	.ask-box{
		cursor: default;
		font-size: 1.14rem;
		line-height: 1.8rem;
		box-sizing: border-box;
		padding: .3rem .5rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
		overflow: hidden;
	}
	.reply-box{
		position: fixed;
		right: 2.5rem;
		top: 2.5rem;
		height: 35rem;
		width: 26rem;
		border: 1px solid #666;
		border-radius: 1rem;
		z-index: 99;
		overflow: visible;
		background: aliceblue;
	}
	.reply-box .close{
		color: #eee;
		position: absolute;
		right: -.8rem;
		top: -.8rem;
		height: 2rem;
		text-align: center;
		width: 2rem;
		border-radius: 50%;
		background: skyblue;
	}
	.reply-box .title{
		cursor: move;
		height: 3rem;
		text-align: center;
		font: normal 1.2rem/3rem "微软雅黑";
		border-radius: 1rem 1rem 0 0;
		background: skyblue;
	}
	.reply-box .title a{
		color: #000;
		font-weight: 900;
	}
	.reply-box .question{
		font-size: 1.1rem;
		line-height: 1.6rem;
		height: 6.9rem;
		width: 92%;
		margin: .5rem auto 0;
		padding: 0 4% .6rem;
		box-sizing: border-box;
		border-bottom: 1px solid #ccc;
		overflow: auto;
	}
	.reply-box .reply{
		display: block;
		resize: none;
		line-height: 1.6rem;
		height: 21rem;
		margin-top: 1rem;
		width: 100%;
		padding: 0 4%;
		font-size: 1.1rem;
		border: 0;
		overflow: auto;
		background: none;
	}
	.reply-box-bottom{
		height: 2.5rem;
		border-radius: 0 0 1rem 1rem;
		border-top: 1px solid #aaa;
		box-sizing: border-box;
		overflow: hidden;
		background: #eee;
	}
	.reply-box-bottom span{
		font-size: 1.14rem;
		float: left;
		height: 100%;
		line-height: 2.4rem;
		width: 7rem;
		text-align: center;
		background: lightblue;
	}
	.reply-box-bottom [type="submit"]{
		font-size: 1.14rem;
		float: right;
		height: 100%;
		width: 7rem;
		border: 0;
		background: lightblue;
	}
	.reply-box-bottom [type="submit"]:hover{
		font-weight: 900;
		background: skyblue;
	}
	/*****************img-text**********************/
	#img-text{
		margin-bottom: .5rem;
	}
	#img-text .bottom input[type="submit"]{
		margin-left: .5rem;
	}
	/*************video***************/
	#video-edit{
		background: #eec;
	}
	.add-wraper{
		position: relative;
		height: 28rem;
		background: #ccc;
	}
	.video-box,.add-box{
		position: absolute;
		left: 50%;
		top: 50%;
		transform: translate(-50%,-50%);
	}
	.video-box{
		height: 25rem;
		border-radius: 1rem;
		overflow: hidden;
	}
	.video-box video{
		height: 100%;
		width: auto;
	}
	.video-cover{
		position: absolute;
		left: 0;
		top: 0;
		height: 100%;
		width: 100%;
		background: rgba(0,0,0,.5);
	}
	.video-progress{
		color: darkblue;
		position: absolute;
		left: 50%;
		top: 45%;
		transform: translate(-50%,-50%);
		height: 8rem;
		width: 8rem;
		text-align: center;
		font: normal 2rem/8rem "微软雅黑";
		border-radius: 50%;
		background: skyblue;
		z-index: 100;
	}
	.add-box{
		color: #fff;
		cursor: pointer;
		height: 8rem;
		width: 8rem;
		text-align: center;
		font: 600 4rem/8rem "微软雅黑";
		box-sizing: border-box;
		border-radius: 50%;
		background: #eec;
	}
	.add-box:hover{
		color: skyblue;
	}
	.add-box [type="file"]{
		display: none;
	}
</style>
