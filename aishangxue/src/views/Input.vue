<template>
	<div>
		<drop-input :options="dropOptions"></drop-input>
		<tree-input :data="treeData"></tree-input>
		<!-- <test-input></test-input> -->
	</div>
</template>

<script>
	import TreeInput from '../components/TreeInput.vue'
	import DropInput from '../components/DropInput.vue'
	import TestInput from '../components/TestInput.vue'
	export default {
	    name: 'input',
	    components: {
	        TreeInput,DropInput,TestInput
	    },
	    data(){
		    return {
				dropOptions: [{
					  id: '0',
					  py:"WZDXB",
					  option: '未知的性别'
					}, {
					  id: '1',
					  py:"N",
					  option: '男'
					}, {
					  id: '2',
					  py:"N",
					  option: '女'
					}, {
					  id: '9',
					  py:"WSMDXB",
					  option: '未说明的性别'
				}],
				optionRegex:/性别/,
				treeData:[{
					"label":"实有人口业务类型代码",
					"children":[
						{"label":"1 | 人户一致"},
						{"label":"2 | 人户不一致"},
						{"label":"3 | 流入居住","children":[{"label":"流入居住(跨县)"},{"label":"流入居住(跨市)"},{"label":"流入居住(跨省)"}]},
						{"label":"4 | 暂时无法判定"},
						{"label":"5 | 境外居留人员","children":[{"label":"外国居留人员"},{"label":"华侨居留人员"},{"label":"港澳地区居留人员"},{"label":"台湾地区居留人员"}]}
					]
				}]
		    }
	    },
	}
</script>

<style scoped>
	.drop-input,.tree-input{
		float: left;
		margin: 10px 50px 10px 10px;
	}
	.test{
		float: left;
	}
	
</style>
