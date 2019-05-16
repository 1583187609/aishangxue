<template>
	<div id="query-user" class="server">
		<iframe name="iframe" style="display: none;"></iframe>
		<form class="clear">
			<fieldset class="user-info">
				<legend>查询用户条件</legend>
				<label>昵称：<input type="text" placeholder="请填写用户昵称" /></label>
				<label>姓名：<input type="text" placeholder="请填写用户姓名" /></label>
				<label>性别：<input type="text" placeholder="请填写用户性别" /></label>
				<label>年龄：<input type="text" placeholder="请填写用户年龄" /></label>
				<label>籍贯：<input type="text" placeholder="请填写用户籍贯" /></label>
				<label>兴趣：<input type="text" placeholder="请填写用户兴趣" /></label>
				<label>电话：<input type="text" placeholder="请填写用户电话" /></label>
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
	.server [type="submit"]{
		color: #fff;
		float: right;
		padding: 0 10px;
		background: skyblue;
	}
	.user-info label{
		display: inline-block;
		margin: 5px 40px 5px 0;
	}
	.user-info input[type="text"]{
		min-width: 100px;
	}
</style>
