<template>
	<div class="tree-input">
		<el-select v-model="treeInputVal">
			<el-option>
			  <el-tree :data="data" @node-click="handleNodeClick"></el-tree>
			</el-option>
		</el-select>
	</div>
</template>

<script>
	//满足五笔输入、数字输入、键盘输入的需求
	export default {
		props:["data"],
	    data(){
		    return {
			treeInputVal:"",
		  };
		},
		methods:{
			handleNodeClick(obj,node) {
			   if(node.isLeaf){
				   let label=node.label;
				   label=label.replace(/[0-9]|\|/g,"").trim();
				   this.treeInputVal=label;
			   }
		    },
	    },
	}
</script>

<style scoped>
	.el-scrollbar .el-scrollbar__view .el-select-dropdown__item{
	  height: auto;
	  padding: 0;
	  overflow: auto;
	}
</style>
