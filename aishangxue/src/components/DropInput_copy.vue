<!-- 普通下拉输入框 -->
<template>
	<div class="drop-input">
		<el-select v-model="selectVal">
			<el-option v-for="item in options" :key="item.value" :label="item.value+' | '+item.label" :value="item.value"></el-option>
	    </el-select>
	</div>
</template>

<script>
	//满足五笔输入、数字输入、键盘输入的需求，同时校验输入
	export default {
		props:["options"],
		data() {
			return {
			  selectVal:""
			}
		},
		computed:{
			
		}
	}
</script>

<style scoped>
	
</style>
