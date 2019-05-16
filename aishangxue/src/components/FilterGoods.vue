<template>
	<form class="condition clear">
		<label id="goods-classify">商品分类:
			<select>
				<option></option>
				<option>最新</option>
				<option>最热</option>
				<option>推荐</option>
			</select>
		</label>
		<label id="key-words">关键字:<input type="text" name="keyWords" placeholder="请输入关键字" /></label>
		<label>价格:<input type="number" placeholder="最低价" /> <b>-</b> <input type="number" placeholder="最高价" /></label>
		<label>排序:
			<select>
				<option>价格↑</option>
				<option>价格↓</option>
				<option>销量↑</option>
				<option>销量↓</option>
			</select>
		</label>
		<input type="submit" value="一键筛选" />
	</form>
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

</style>
