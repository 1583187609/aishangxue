<template>
	<div id="add-user" class="server">
		<iframe name="iframe" style="display: none;"></iframe>
		<form>
			<fieldset>
				<legend>选择用户类型</legend>
				<label>用户类型：
					<select v-model="infoType">
						<option>普通用户</option>
						<option>职业用户</option>
						<option>专家用户</option>
						<option>管理员</option>
					</select>
				</label>
			</fieldset>
		</form>
		<form>
			<fieldset class="user-info">
				<legend>填写用户信息</legend>
				<label>昵称：<input type="text" placeholder="请填写用户昵称" /></label>
				<label>姓名：<input type="text" placeholder="请填写用户姓名" /></label>
				<label>性别：<input type="text" placeholder="请填写用户性别" /></label>
				<label>年龄：<input type="text" placeholder="请填写用户年龄" /></label>
				<label>籍贯：<input type="text" placeholder="请填写用户籍贯" /></label>
				<label>兴趣：<input type="text" placeholder="请填写用户兴趣" /></label>
				<label>电话：<input type="text" placeholder="请填写用户电话" /></label>
				<label>出生年月：<input type="text" placeholder="请填写用户出生年月" /></label>
				<div>个人说明：<textarea placeholder="请填写用户个人说明"></textarea></div>
				<div class="submit-box"><input type="submit" value="提交" /></div>
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
	.user-info label{
		display: inline-block;
		margin-right: 200px;
	}
	.user-info input[type="text"]{
		min-width: 300px;
	}
</style>
