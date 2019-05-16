
<template>
	<div id="query-info" class="server">
		<iframe name="iframe" style="display: none;"></iframe>
		<form class="clear">
			<fieldset>
				<legend>查询信息条件</legend>
				<label>信息类别：
					<select v-model="infoType">
						<option>问题</option>
						<option>图文</option>
						<option>视频</option>
						<option>商品</option>
					</select>
				</label>
				<label class="info-classify">
					信息类型：<input type="text" placeholder="请选择" />
					<select multiple>
						<option>常识</option><option>生活</option>
						<option>城乡</option><option>行业</option>
						<option>创意</option><option>科技</option>
						<option>军事</option><option>财经</option>
						<option>人生</option><option>休闲</option>
					</select>
				</label>
				<label>用户头衔：
					<select>
						<option>未注册用户</option>
						<option>普通用户</option>
						<option>职业用户</option>
						<option>专家用户</option>
					</select>
				</label>
				<label>发布时间：
					<select>
						<option>一天以内</option>
						<option>一周以内</option>
						<option>一月以内</option>
					</select>
				</label>
				<input type="submit" value="筛选" />
			</fieldset>
		</form>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				
			};
		}
	}
</script>

<style scoped>
/***********public**************/
	.server [type="submit"]{
		color: #fff;
		float: right;
		padding: 0 10px;
		background: skyblue;
	}
	form{

	}
	label{
		display: inline-block;
		margin-right: 40px;
	}
	label:last-child{
		margin-right: 0;
	}
	.submit-box{
		
	}
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
</style>
