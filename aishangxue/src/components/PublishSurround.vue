<template>
	<div id="publish-surround">
		<form v-if="classify=='partFullJob'" id="part-full-job" method="post" action="http://localhost:81/publishJob" enctype="multipart/form-data">
			<fieldset>
				<legend>职位基本信息</legend>
				<label>类型：
					<select name="job_type" v-model="jobType">
						<option>兼职</option>
						<option>全职</option>
					</select>
				</label>
				<label>职责：<input type="text" name="name" placeholder="如:洗碗工" v-model="jobName" /></label>
				<label>时间：<input type="text" name="time" placeholder="如:朝九晚六,弹性时间(只做3月1号到3月7号)"  v-model="jobTime"/></label>
				<label>地点：<input type="text" name="site" placeholder="如:武侯区科华北路磨子巷" v-model="jobSite" /></label>
				<label>薪酬：<input type="text" name="payment" placeholder="如:12元/小时(200/天)" v-model="jobPayment" /></label>
				<label>特别说明：<textarea name="special" placeholder="请大致描述一下需要注意的事项" v-model="jobSpecial"></textarea></label>
				<label>职位描述：<textarea name="description" placeholder="请大致描述一下工作地点工作类型等" v-model="jobDescription"></textarea></label>
				<div class="addimg-wrap">
					<b>添加图片：</b>
					<div class="addimg-box">
						<label v-if="!jobImgSrc"><span>+</span><input type="file" name="jobimg" @change="addImg($event,'jobimg',jobData)" /></label>
						<img :src="jobImgSrc" v-if="jobImgSrc" />
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend>联系方式</legend>
				<label>手机号码：<input type="tel" name="tel" placeholder="自己的手机电话号码" v-model="jobTel" /></label>
			</fieldset>
			<div class="submit-box">
				<input type="button" value="预览" />
				<input type="submit" value="发布" @click.prevent="publishSurround('publishJob')" />
			</div>
		</form>
		<form v-else-if="classify=='secondDeal'" id="second-deal">
			<fieldset>
				<legend>基本信息</legend>
				<label>商品名称：<input type="text" name="secondName" placeholder="如:二手华为Nov3e" v-model="secondName" /></label>
				<label>新旧程度：<input type="text" name="secondWhatNew" placeholder="例如:八成新" v-model="secondWhatNew" /></label>
				<label>定价说明：<input type="number" name="secondPrice" placeholder="指定区间或直接说明卖价" v-model="secondPrice" /></label>
				<label>特别说明：<textarea name="secondSpecial" placeholder="是否有补充说明" v-model="secondSpecial"></textarea></label>
				<label>商品描述：<textarea name="secondDescription" placeholder="请大致描述商品的现状,例如几成新等" v-model="secondDescription"></textarea></label>
				<div class="addimg-wrap">
					<b>添加图片：</b>
					<div class="addimg-box">
						<label v-if="!secondImgSrc"><span>+</span><input type="file" name="secondimg" @change="addImg($event,'secondimg',secondData)" /></label>
						<img :src="secondImgSrc" v-if="secondImgSrc" />
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend>联系方式</legend>
				<label>手机号码：<input type="tel" name="secondTel" placeholder="自己的手机电话号码" v-model="secondTel" /></label>
			</fieldset>
			<div class="submit-box">
				<input type="button" value="预览" />
				<input type="submit" value="发布" @click.prevent="publishSurround('publishSecond')" />
			</div>
		</form>
		<form v-else-if="classify=='findPoster'" id="find-poster">
			<fieldset>
				<legend>基本信息</legend>
				<label>标题：<input type="text" placeholder="如:寻狗启事,寻人启事,寻物启事等" v-model="findTitle" /></label>
				<label>内容：<textarea class="textarea-article" placeholder="请输入寻_启事的主要内容" v-model="findContent"></textarea></label>
				<label>特别说明：<textarea placeholder="请着重描述需要注意的地方" v-model="findSpecial"></textarea></label>
				<div class="addimg-wrap">
					<b>添加图片：</b>
					<div class="addimg-box">
						<label v-if="!findImgSrc"><span>+</span><input type="file" name="findimg" @change="addImg($event,'findimg',findData)" /></label>
						<img :src="findImgSrc" v-if="findImgSrc" />
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend>联系方式</legend>
				<label>手机号码：<input type="tel" placeholder="自己的手机电话号码" v-model="findTel" /></label>
			</fieldset>
			<div class="submit-box">
				<input type="button" value="预览" />
				<input type="submit" value="发布" @click.prevent="publishSurround('publishFind')"  />
			</div>
		</form>
		<form v-else-if="classify=='freePublish'" id="free-publish">
			<fieldset>
				<legend>基本信息</legend>
				<label v-for="(item,index) in freeLabels">
					<input type="text" class="label-key" placeholder="填写标签" v-model="freeLabels[index].key" />：
					<input type="text" class="label-val" placeholder="填写内容" v-model="freeLabels[index].val" />
					<button class="del-label-btn" @click="delFreeLabel(index,$event)" v-if="freeLabels.length!=1">删除</button>
				</label>
				<label><input class="add-label-btn" type="button" value="添加标签项" @click="addFreeLabel($event)" /></label>
				<label>主要内容：<textarea placeholder="请大致描述一下工作地点工作类型等" v-model="freeContent"></textarea></label>
				<label>特别说明：<textarea placeholder="请大致描述一下需要注意的事项" v-model="freeSpecial"></textarea></label>
				<div class="addimg-wrap">
					<b>添加图片：</b>
					<div class="addimg-box">
						<label v-if="!freeImgSrc"><span>+</span><input type="file" name="freeimg" @change="addImg($event,'freeimg',freeData)" /></label>
						<img :src="freeImgSrc" v-if="freeImgSrc" />
					</div>
				</div>
			</fieldset>
			<div class="submit-box">
				<input type="button" value="预览" />
				<input type="submit" value="发布" @click.prevent="publishSurround('publishFree')" />
			</div>
		</form>
	</div>
</template>

<script>
	export default {
		props:["classify"],
		data() {
			return {
				jobType:"兼职",
				jobName:"洗碗工",
				jobTime:"2019.4.24——2019.4.30",
				jobSite:"武侯区科华北路99号",
				jobPayment:"200元/每天",
				jobSpecial:"暂无特别说明",
				jobDescription:"暂无相关描述",
				jobTel:"18483221518",
				jobFormData:"",
				jobImgSrc:"",
				secondName:"华为nova3e",
				secondWhatNew:"九成新",
				secondPrice:"999",
				secondSpecial:"暂无关于此二手商品的特别说明",
				secondDescription:"暂无关于此二手商品的描述",
				secondTel:"18483221518",
				secondFormData:"",
				secondImgSrc:"",
				findTitle:"寻人启事",
				findContent:"暂无寻找内容",
				findSpecial:"暂无有关寻人启事的特别说明",
				findTel:"18483221518",
				findFormData:"",
				findImgSrc:"",
				freeLabels: [{key:"电话号码",val:"18483221518"},{key:"示例键",val:"示例值"}],
				freeContent:"暂无自定义相关的内容",
				freeSpecial:"暂无自定义的特别说明内容",
				freeFormData:"",
				freeImgSrc:""
			};
		},
		methods:{
			addImg(e,imgName,publishData){
				console.log(publishData)
				let vm=this;
				let that=e.target;
				let img = that.files[0];
				let imgSize=img.size/1024;    //图片大小，单位：K
				imgSize=imgSize.toFixed(1);
				if(imgSize>100){
					this.$message.error("图片大小不能超过100K!")
				}else{
					let fd = new FormData();
					fd.append(imgName, img);
					for(let i=0;i<publishData.length;i++){
						fd.append(publishData[i].name,publishData[i].val)
					}
					switch(imgName){
						case "jobimg":
							this.jobFormData=fd;
							this.jobImgSrc=window.URL.createObjectURL(img);   
							break;
						case "secondimg":
							this.secondFormData=fd;
							this.secondImgSrc=window.URL.createObjectURL(img);
							break;
						case "findimg":
							this.findFormData=fd;
							this.findImgSrc=window.URL.createObjectURL(img);
							break;
						case "freeimg":
							this.freeFormData=fd;
							this.freeImgSrc=window.URL.createObjectURL(img);
							break;
					}
				}
			},
			publishSurround(path){
				let that=this;
				let formData=null;
				let surroundType="";
				switch(path){
					case "publishJob": 
						formData=that.jobFormData;
						surroundType="兼/全职";
						break;
					case "publishSecond": 
						formData=that.secondFormData;
						surroundType="二手转卖";
						break;
					case "publishFind": 
						formData=that.findFormData;
						surroundType="寻_启事";
						break;
					case "publishFree": 
						formData=that.freeFormData;
						surroundType="自定义";
						break;
				}
				this.$axios.post('http://localhost:81/'+path,formData)
				.then((response) => {
					if (response.status === 200) {
						that.$message(surroundType+"信息发送成功")
					}else{that.$message.error(surroundType+"信息发送失败")}
				})	
			},
			addFreeLabel(e){
				if(this.freeLabels.length<5){
					let lastLabel=e.target.parentNode.previousElementSibling;
					let firstInput=lastLabel.children[0];
					let secondInput=lastLabel.children[1];
					if(firstInput.value.trim() && secondInput.value.trim()){
						let obj={};
						obj.key="";
						obj.val="";
						this.freeLabels.push(obj);
					}else{
						alert("请将标签项填入完整！")
					}
				}else{
					alert("您被允许最多只能添加5个标签项！")
				}
			},
			delFreeLabel(index,e){
				this.freeLabels.splice(index,1)
			},
		},
		computed:{
			jobData(){
				let arr=[
					{name:"job_type",val:this.jobType},
					{name:"author_number",val:this.$store.state.loginUserInfo.number},
					{name:"name",val:this.jobName},
					{name:"time",val:this.jobTime},
					{name:"site",val:this.jobSite},
					{name:"payment",val:this.jobPayment},
					{name:"special",val:this.jobSpecial},
					{name:"description",val:this.jobDescription},
					{name:"tel",val:this.jobTel}
				]
				return arr;
			},
			secondData(){
				let arr=[
					{name:"author_number",val:this.$store.state.loginUserInfo.number},
					{name:"name",val:this.secondName},
					{name:"price",val:this.secondPrice},
					{name:"tel",val:this.secondTel},
					{name:"what_new",val:this.secondWhatNew},
					{name:"special",val:this.secondSpecial},
					{name:"description",val:this.secondDescription}
				]
				return arr;
			},
			findData(){
				let arr=[
					{name:"author_number",val:this.$store.state.loginUserInfo.number},
					{name:"title",val:this.findTitle},
					{name:"tel",val:this.findTel},
					{name:"content",val:this.findContent},
					{name:"special",val:this.findSpecial}
				]
				return arr;
			},
			freeData(){
				let arr=[
					{name:"author_number",val:this.$store.state.loginUserInfo.number},
					{name:"labels",val:JSON.stringify(this.freeLabels)},
					{name:"content",val:this.freeContent},
					{name:"special",val:this.freeSpecial}
				]
				return arr;
			},
		},
	}
</script>

<style scoped>
	/****************public****************/
	#publish-surround{
		padding-bottom: 3rem;
	}
	fieldset{
		font-size: 1rem;
		margin: .5rem 0 1rem;
		padding: 1rem 2rem;
		box-sizing: border-box;
		border: 1px solid blue;
		border-radius: .5rem;
	}
	legend{
		color: #fff;
		font: normal 1.2rem/2rem "微软雅黑";
		padding: 0 1rem;
		border: 1px solid blue;
		border-radius: .5rem;
		margin-left: -1rem;
		background: deepskyblue;
	}
	label{
		font-size: 1.1rem;
		font-weight: 700;
		margin: .6rem 0;
	}
	.label-key{
		width: 8rem;
	}
	.add-label-btn,.del-label-btn{
		color: #fff;
		padding: 0 1rem;
		height: 2rem;
		width: auto;
		font-size: 1rem;
		background: deepskyblue;
	}
	.add-label-btn:hover,.del-label-btn:hover{
		color: #eee;
	}
	.del-label-btn{
		margin-left: 1rem;
	}
	select,input,textarea,button{
		font-size: 1rem;
		height: 2rem;
		line-height: 2rem;
		border-radius: .3rem;
		box-sizing: border-box;
		padding: 0 .5rem;
		border: 1px solid lightblue;
	}
	input{
		width: 30rem;
	}
	textarea{
		min-height: 5.4rem;
		width: 100%;
		resize: vertical;
	}
	.submit-box{
		text-align: center;
	}
	.submit-box [type="submit"],.submit-box [type="button"]{
		color: #fff;
		font: 800 1.1rem "微软雅黑";
		width: 5rem;
		height: 2.5rem;
		margin: 0 1rem;
		border: 0;
		background: blue;
	}
	.submit-box [type="submit"]:hover,.submit-box [type="button"]:hover{
		background: #00d;
	}
	[type="tel"]{
		width: 15rem;
	}
	[type="file"]{
		display: none;
	}
	.textarea-article{
		min-height: 30rem;
	}
	.addimg-wrap{

	}
	.addimg-wrap b{
		display: block;
		font-size: 1.1rem !important;
	}
	.addimg-box{
		height: 11rem;
	}
	.addimg-box label,.addimg-box img{
		width: 10rem;
		height: 10rem;
		border: 1px solid lightblue;
		border-radius: 1rem;
	}
	.addimg-box img{
		width: auto;
	}
	.addimg-box label span{
		cursor: pointer;
		color: #eee;
		display: inline-block;
		position: relative;
		left: 50%;
		top: 50%;
		transform: translate(-50%,-50%);
		height: 4rem;
		width: 4rem;
		text-align: center;
		font: normal 2rem/4rem "微软雅黑";
		border-radius: 50%;
		background: lightblue;
	}
	.addimg-box label:hover{
		border: 1px solid skyblue;
	}
	.addimg-box label span:hover{
		color: #fff;
		background: skyblue;
	}
	/**********part-full-job***************/
	#part-full-job label{
		
	}
	#part-full-job [type="tel"]{
		
	}
	
</style>
