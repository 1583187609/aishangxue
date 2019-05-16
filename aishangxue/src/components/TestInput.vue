<template>
	<div class="test">
		<div data-v-8dfeaeca="" data-v-8d97ae00="" class="drop-input">
			<div data-v-8dfeaeca="" class="el-select">
				<div class="el-input el-input--suffix">
					<input type="text" readonly="readonly" autocomplete="off" placeholder="测试框" class="el-input__inner" />
					<span class="el-input__suffix">
						<span class="el-input__suffix-inner">
							<i class="el-select__caret el-input__icon el-icon-arrow-up"></i>
						</span>
					</span>
				</div>
				<div class="el-select-dropdown el-popper" style="display: none; min-width: 217px;">
					<div class="el-scrollbar" style="">
						<div class="el-select-dropdown__wrap el-scrollbar__wrap" style="margin-bottom: -17px; margin-right: -17px;">
							<ul class="el-scrollbar__view el-select-dropdown__list">
								<li data-v-8dfeaeca="" class="el-select-dropdown__item"><span>未知的性别</span></li>
								<li data-v-8dfeaeca="" class="el-select-dropdown__item"><span>男</span></li>
								<li data-v-8dfeaeca="" class="el-select-dropdown__item"><span>女</span></li>
								<li data-v-8dfeaeca="" class="el-select-dropdown__item"><span>未说明的性别</span></li>
							</ul>
						</div>
						<div class="el-scrollbar__bar is-horizontal"><div class="el-scrollbar__thumb" style="transform: translateX(0%);"></div></div>
						<div class="el-scrollbar__bar is-vertical"><div class="el-scrollbar__thumb" style="transform: translateY(0%);"></div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	//满足五笔输入、数字输入、键盘输入的需求，同时校验输入
	export default {
		data() {
			return {
			  selectVal:"",
			  options: [{
				  value: '1',
				  label: '未知的性别'
				}, {
				  value: '2',
				  label: '男'
				}, {
				  value: '3',
				  label: '女'
				}, {
				  value: '4',
				  label: '未说明的性别'
				}],
			}
		},
		computed:{
			
		},
		methods:{
			
		}
	}
</script>

<style scoped>
	
</style>

