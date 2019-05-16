<template>
	<div id="add-adv" class="server">
		<iframe name="iframe" style="display: none;"></iframe>
		<form method="post" action="http://localhost:81/uploadAdv" target="iframe">
			<fieldset>
				<legend>填写信息</legend>
				<label>标题：<input type="text" placeholder="请输入标题" name="title" v-model="advTitle" required /></label>
				<label>广告类型：
					<select v-model="advType">
						<option>图片</option>
						<option>视频</option>
					</select>
				</label>
				<div v-if="advType=='图片'">
					<label v-for="(item,index) in advImgSrcs">图片地址{{index+1}}：
						<input type="url" placeholder="请输入图片地址" :name="'imgsrc'+index" v-model="advImgSrcs[index]" required />
						<button @click="delAdvImgSrc(index)" v-if="advImgSrcs.length>1">删除</button>
					</label>
					<label><input type="button" value="添加图片地址" @click="addAdvImgSrc($event)" /></label>
				</div>
				<div v-if="advType=='视频'">
					<label>视频地址：<input type="url" name="videosrc" placeholder="请输入视频地址" v-model="advVideoSrc" /></label>
				</div>
				<div class="submit-box"><input type="submit" value="提交" @click="emptyAdvSrc" /></div>
			</fieldset>
		</form>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				advType:"图片",
				advTitle:"这是广告的标题",
				advImgSrcs:[""],
				advVideoSrc:""
			};
		},
		methods:{
			addAdvImgSrc(e){
				if(this.advImgSrcs.length<3){
					let lastInput=e.target.parentNode.previousElementSibling.querySelector("[type='url']");
					if(lastInput.value.trim()){this.advImgSrcs.push("");
					}else{this.$message.error("上一个图片地址还未填写！")}
				}else{this.$message.error("最多只能添加3张图片！")}
			},
			delAdvImgSrc(index){
				this.advImgSrcs.splice(index,1)
			},
			emptyAdvSrc(){
				let that=this;
				setTimeout(function(){
					that.advImgSrcs=[""];
					that.advVideoSrc="";
					that.$message("广告上传成功")
				},100)
			}
		}
	}
</script>

<style scoped>

</style>
