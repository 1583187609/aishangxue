<template>
	<el-container id="app">
		<router-view/>
	</el-container>
</template>

<script>
export default {
  name: 'App',
	data: function(){
		return {
			
		}
	},
	methods:{
		changeLayout(){
			console.log("changeLayout在App中执行")
		}
	},
	created(){
		window.addEventListener("beforeunload",()=>{
			localStorage.setItem("menuActiveIndex",this.$store.state.activeIndex);   //保存菜单下标
			localStorage.setItem("infoClassify",this.$store.state.infoClassify);   //保存信息的类型，常识、军事、生活等类
			localStorage.setItem("menuSelected",JSON.stringify(this.$store.state.selected))  //保存已勾选菜单和未勾选菜单
			localStorage.setItem("menuUnSelect",JSON.stringify(this.$store.state.unselect));
			localStorage.setItem("layoutType",this.$store.state.layoutType)  //页面布局方式
		})
	},
	mounted(){
		//根据本地存储初始化相关数据
		this.$store.state.activeIndex=localStorage.getItem("menuActiveIndex")
		this.$store.state.infoClassify=localStorage.getItem("infoClassify")
		this.$store.state.selected=JSON.parse(localStorage.getItem("menuSelected"))
		this.$store.state.unselect=JSON.parse(localStorage.getItem("menuUnSelect"))
		this.$store.state.layoutType=localStorage.getItem("layoutType");
		//业务处理
	}
}
</script>

<style>
	#app {
		display: block;
		min-width:1200px;
	}
</style>
