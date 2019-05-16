<template>
	<div id="message-inform">
		<div class="aboutme-search-wrapper clear">
			<div class="curr-postion">当前位置：<b>消息通知</b></div>
		</div>
		<!--  -->
		<div v-if="currPage=='message1'">
			<div class="content">
				消息内容展示1
			</div>
		</div>
		<!--  -->
		<div v-else-if="currPage=='message2'">
			<div class="content">
				消息内容展示2
			</div>
		</div>
		<!--  -->
		<div v-else-if="currPage=='message3'">
			<div class="content">
				消息内容展示3
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		props:["classify"],
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
