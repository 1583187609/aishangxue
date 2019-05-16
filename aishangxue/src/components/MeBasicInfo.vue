<template>
	<div id="basic-info">
		<!--  -->
		<div class="notice-page" v-if="currPage=='notice'">
			<div class="aboutme-search-wrapper clear">
				<div class="curr-postion">当前位置：<b>关注</b></div>
				<div class="search-box">
					<input type="search" placeholder="请输入……" />
					<input type="button" value="搜索" />
				</div>
			</div>
			<div class="content">
				<notice-fans-display v-for="item in 12" :classify="classify"></notice-fans-display>
			</div>
		</div>
		<!--  -->
		<div class="fans-page" v-else-if="currPage=='fans'">
			<div class="aboutme-search-wrapper clear">
				<div class="curr-postion">当前位置：<b>粉丝</b></div>
				<div class="search-box">
					<input type="search" placeholder="请输入……" />
					<input type="button" value="搜索" />
				</div>
			</div>
			<div class="content">
				<notice-fans-display v-for="item in 6" :classify="classify"></notice-fans-display>
			</div>
		</div>
		<!--  -->
		<div class="collect-page clear" v-else-if="currPage=='collect'" >
			<div class="aboutme-search-wrapper clear">
				<div class="curr-postion">当前位置：<b>收藏</b></div>
				<div class="search-box">
					<input type="search" placeholder="请输入……" />
					<input type="button" value="搜索" />
				</div>
			</div>
			<div class="content clear">
				<div class="collect-left">
					<el-tree :data="collectTree" default-expand-all @node-click="clickTreeNodeHandle"></el-tree>
				</div>
				<div class="collect-right">
					{{currNodeVal}}
				</div>
			</div>
		</div>
		<!--  -->
		<div class="publish-page" v-else-if="currPage=='publish'">
			<div class="aboutme-search-wrapper clear">
				<div class="curr-postion">当前位置：<b>发布</b></div>
				<div class="search-box">
					<input type="search" placeholder="请输入……" />
					<input type="button" value="搜索" />
				</div>
			</div>
			<div class="content">
				同发布功能中的业务，故暂时没有开通在个人中心查看发布信息的功能
			</div>
		</div>
		<!--  -->
		<div class="weekvisited-page" v-else-if="currPage=='weekVisited'">
			<div class="aboutme-search-wrapper clear">
				<div class="curr-postion">当前位置：<b>周访问</b></div>
				<div class="search-box">
					<input type="search" placeholder="请输入……" />
					<input type="button" value="搜索" />
				</div>
			</div>
			<div class="content">
				<notice-fans-display v-for="item in 10" :classify="classify"></notice-fans-display>
			</div>
		</div>
	</div>
</template>

<script>
	import NoticeFansDisplay from "./NoticeFansDisplay.vue"
	export default {
		props:["classify"],
		components:{
			NoticeFansDisplay
		},
		data() {
			return {
				currPage: this.classify,
				currNodeVal:"请点击左边的叶子节点",
				collectTree: [
					{ id: 1, label: '一级 1',children: [{
						id: 4,
						label: '二级 1-1',
						children: [{
						  id: 9,
						  label: '三级 1-1-1'
						}, {
						  id: 10,
						  label: '三级 1-1-2'
						}]
					  }]
					}, 
					{id: 2,label: '一级 2',children: [
							{id: 5,label: '二级 2-1'}, 
							{id: 6,label: '二级 2-2' }
						]
					}, 
					{id: 3,label: '一级 3',children: [
						{id: 7,label: '二级 3-1'},
						{id: 8,label: '二级 3-2'},
						],
					},
				],
			};
		},
		methods:{
			clickTreeNodeHandle(obj,node){
				if(node.isLeaf){
					this.currNodeVal=node.data.label;
				}
			}
		},
		watch:{
			classify(){
				this.currPage=this.classify;
			},
		    filterText(val) {
			    this.$refs.tree2.filter(val);
		    }
		},
		mounted() {
			
		}
	}
</script>

<style scoped>
	/************public************/
	#basic-info{
		height: 100%;
		overflow: auto;
	}
	[class$="-page"]{
		height: 100%;
		overflow: auto;
	}
	.content{
		margin-left: 1.5rem;
	}
	.el-tree{
		height: 100%;
	}
	/************private***************/
	.collect-page{
		
	}
	.collect-left{
		float: left;
		width: 25%;
		height: 38rem;
		overflow: auto;
		padding-right: 1rem;
		box-sizing: border-box;
	}
	.collect-right{
		float: right;
		width: 75%;
		height: 38rem;
		overflow: auto;
		box-sizing: border-box;
		padding: .5rem 1rem;
		background: #fff;
	}
</style>
