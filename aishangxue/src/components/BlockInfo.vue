<template>
	<div id="block-info">
		<el-row class="content">
			<el-col :span="15" class="txt-box">
				<router-link :to="{path:'/show', query:{id:item.id}}" @click.native="toChangeNewsId">{{item.title}}</router-link>
			</el-col>
			<el-col :span="8" :push="1" class="img-box">
				<router-link :to="{path:'/show', query:{id:item.id}}" @click.native="toChangeNewsId">
					<img src="../assets/testimg/logo.png" />
				</router-link>
			</el-col>
		</el-row>
		<el-row class="bottom">
			<el-col :span="16" class="labels">
				<el-tag v-for="ite in item.labels">{{ite}}</el-tag>
			</el-col>
			<el-col :span="8" class="info">
				<el-row>
					<el-col :span="9">{{item.publish.time}}</el-col>
					<el-col :span="15">{{item.publish.author}}</el-col>
				</el-row>
			</el-col>
		</el-row>
	</div>
</template>

<script>
	export default {
		props:["item"],
		data() {
			return {
				
			};
		},
		methods:{
			toChangeNewsId(){
				this.$emit("changeNewsId")
			}
		}
		
	}
</script>

<style scoped>
	#block-info{
		width: 90%;
		padding: .2rem .5rem;
		margin-left: .5rem;
		border-bottom: 1px solid #ddd;
	}
	.content{
		height: 6rem;
	}
	.txt-box{
		padding: .3rem 0;
	}
	.txt-box a:link{
		color: #000;
		font: 700 1.14rem/1.8rem "微软雅黑";
	}
	.txt-box a:visited{
		color: purple;
	}
	.txt-box a:hover{
		color: #008;
	}
	.txt-box a:active{
		color: purple;
	}
	.img-box{
		height: 6rem;
		overflow: hidden;
	}
	.img-box img{
		position: relative;
		width: 100%;
		height: 100%;
		border: 1px solid #000;
		box-sizing: border-box;
	}
	.bottom{
		font-size: .9rem;
		height: 1.8rem;
	}
	.info{
		color: #666;
		margin-top: .4rem;
	}
	.labels .el-tag{
		height: 1.4rem;
		line-height: 1.3rem;
		margin-top: .2rem;
		margin-right: .3rem;
		padding: 0 .2rem;
	}
</style>
