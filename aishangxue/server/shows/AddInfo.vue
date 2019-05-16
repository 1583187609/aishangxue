<template>
	<div id="add-info" class="server">
		<iframe name="iframe" style="display: none;"></iframe>
		<fieldset>
			<legend>选择信息类型</legend>
			<label>选择信息类型：
				<select v-model="infoType">
					<option>问题</option>
					<option>图文</option>
					<option>视频</option>
					<option>商品</option>
				</select>
			</label>
		</fieldset>
		<form v-if="infoType=='问题'">
			<fieldset>
				<legend>填写信息</legend>
				<label class="info-classify">
					问题类型：<input type="text" placeholder="请选择" />
					<select multiple>
						<option>常识</option><option>生活</option>
						<option>城乡</option><option>行业</option>
						<option>创意</option><option>科技</option>
						<option>军事</option><option>财经</option>
						<option>人生</option><option>休闲</option>
					</select>
				</label>
				<label>问题内容：
					<textarea style="width: 90%;height: 100px;" placeholder="请输入问题"></textarea>
				</label>
				<div class="submit-box"><input type="submit" value="提交" /></div>
			</fieldset>
		</form>
		<form v-if="infoType=='图文'">
			<fieldset>
				<legend>填写信息</legend>
				<label class="info-classify">
					图文类型：<input type="text" placeholder="请选择" />
					<select multiple>
						<option>常识</option><option>生活</option>
						<option>城乡</option><option>行业</option>
						<option>创意</option><option>科技</option>
						<option>军事</option><option>财经</option>
						<option>人生</option><option>休闲</option>
					</select>
				</label>
				<label>
					图文标题：<input type="text" placeholder="请输入图文信息标题" />
				</label>
				<div style="border-radius: 5px;overflow: hidden;"><wang-editor></wang-editor></div>
				<div class="submit-box"><input type="submit" value="提交" /></div>
			</fieldset>
		</form>
		<form v-if="infoType=='视频'">
			<fieldset>
				<legend>填写信息</legend>
				<label class="info-classify">
					视频类型：<input type="text" placeholder="请选择" />
					<select multiple>
						<option>常识</option><option>生活</option>
						<option>城乡</option><option>行业</option>
						<option>创意</option><option>科技</option>
						<option>军事</option><option>财经</option>
						<option>人生</option><option>休闲</option>
					</select>
				</label>
				<label>
					视频标题：<input type="text" placeholder="请输入视频标题" />
				</label>
				<input type="button" value="添加视频" />
				<div class="submit-box"><input type="submit" value="提交" /></div>
			</fieldset>
		</form>
		<form v-if="infoType=='商品'">
			<fieldset>
				<legend>填写信息</legend>
				
					<fieldset id="base-info">
						<legend>基本信息</legend>
						<label>类型：<select id="type" name="type"><option>花卉</option><option>多肉</option><option>仿生植物</option></select></label>
						<label>细分类：<select id="classify" name="classify"><option>花卉1</option><option>花卉2</option></select></label>
						<label>名字：<input name="name" type="text" placeholder="盆栽的具体名字" required="required"/></label>
						<label>原价：<input name="del_price" type="text" placeholder="保留一位小数" value="32.8" /></label>
						<label>现价：<input name="ins_price" type="text" placeholder="保留一位小数" value="28.5" /></label>
						<label>库存量：<input name="inventory" type="number" value="100" /></label>
						<label>销量：<input name="sells" type="number" value="30" /></label>
					</fieldset>
					<fieldset id="img-url">
						<legend>图片地址</legend>
						<label>大图一：<input name="big_img_1" type="text" placeholder="大图一的地址"/></label><label>小图一：<input name="small_img_1" type="text" placeholder="小图一的地址"/></label><br />
						<label>大图二：<input name="big_img_2" type="text" placeholder="大图二的地址"/></label><label>小图二：<input name="small_img_2" type="text" placeholder="小图一的地址"/></label><br />
						<label>大图三：<input name="big_img_3" type="text" placeholder="大图三的地址"/></label><label>小图三：<input name="small_img_3" type="text" placeholder="小图一的地址"/></label><br />
						<label>大图四：<input name="big_img_4" type="text" placeholder="大图四的地址"/></label><label>小图四：<input name="small_img_4" type="text" placeholder="小图一的地址"/></label><br />
					</fieldset>
					<fieldset id="others-info">
						<legend>其他信息</legend>
						<label>商品描述：<br /><textarea name="description" placeholder="卖家对盆栽的描述" ></textarea></label>
						<label>培育方式：<br /><textarea name="breed_ways">暂无培育方式介绍</textarea></label>
					</fieldset>
					<input type="submit" value="提交" />
				
				<div class="submit-box"><input type="submit" value="提交" /></div>
			</fieldset>
		</form>
	</div>
</template>

<script>
	import qs from "qs";
	import WangEditor from "../../src/components/WangEditor.vue"
	export default {
		components:{
			WangEditor
		},
		data() {
			return {
				response:"",
				infoType:"图文",
			};
		},
		methods:{

		},
		computed:{
			
		},
	}
</script>


<style scoped>
	/***********public**************/
	.info-classify{
		position: relative;
	}
	.info-classify [type="text"]{
		min-width: 200px;
	}
	.info-classify select{
		display: none;
		position: absolute;
		top: 30px;
		left: 70px;
		width: 120px;
		height: 150px;
	}
	.info-classify:hover select{
		display: block;
		z-index: 100;
	}
	.info-classify select option:hover{
		background: lightblue;
	}
	
	/**********private***********/
	
	.del-option-btn{
		margin-left: 20px;
	}
	.submit-box{
		text-align: center;
	}
	.submit-box [type="submit"]{
		color: #fff;
		font-size: 16px;
		height: 32px;
		line-height: 32px;
		padding: 0 16px;
		border: 0;
		border-radius: 5px;
		margin: 30px 0 20px;
		background: #00f;
	}
	.submit-box [type="submit"]:hover{
		background: #00c;
	}
</style>
