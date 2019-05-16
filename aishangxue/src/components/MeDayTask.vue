<template>
	<div id="day-task">
		<!--  -->
		<div v-if="currPage=='task1'">
			<div class="aboutme-search-wrapper clear">
				<div class="curr-postion">当前位置：<b>每日任务</b></div>
				<div class="title">艾滋病知识答卷等你来填</div>
			</div>
				任务1
		</div>
		<!--  -->
		<div v-else-if="currPage=='task2'">
			<div class="aboutme-search-wrapper clear">
				<div class="curr-postion">当前位置：<b>每日任务</b></div>
				<div class="title">这个五一去哪儿问卷调查</div>
			</div>
			任务2
		</div>
		<!--  -->
		<div v-else-if="currPage=='task3'">
			<div class="aboutme-search-wrapper clear">
				<div class="curr-postion">当前位置：<b>每日任务</b></div>
				<div class="title">紧急电话知识竞赛</div>
			</div>
			任务3
		</div>
	</div>
</template>

<script>
	export default {
		props:["classify","position"],
		data() {
			return {
				currPage:this.classify
			};
		},
		methods:{
			
		},
		watch:{
			classify(){
				this.currPage=this.classify;
			}
		},
	}
</script>

<style scoped>

</style>
