<template>
	<div id="main-nav" :style="isHome?{position:'relative'}:{position:'fixed'}">
		<img class="is-fixed" :src="imgUrl" v-show="!isHome" @click="changeLayoutType" :title='this.$store.state.layoutType=="fixed"?"固定布局（推荐），单屏展示内容":"流动布局（传统），长屏展示内容"' alt="固定或者流动布局的示意图片" />
		<div class="menu-box clear">
			<ul style="float: left;">
				<li id="all-item"><i class="el-icon-menu"></i>全部
					<div id="all-box" class="clear">
						<div id="hasAdd">
							<b>已添加({{$store.state.selected.length}})</b>
							<select multiple @change="hasAddHasVal" v-model="hasAddVal">
								<option v-for="(item,index) in $store.state.selected" :title="index==0?'必须选项，不可选中':''" :disabled="index==0">{{item}}</option>
							</select>
						</div>
						<div id="move-btns">
							<button :title="hasAddVal.length==0?'请先选择,再点击':''" id="to-right-btn" @click="toRight" :disabled="hasAddVal.length==0">=></button>
							<button :title="notAddVal.length==0?'请先选择,再点击':''" id="to-left-btn" @click="toLeft" :disabled="notAddVal.length==0"><=</button>
						</div>
						<div id="notAdd">
							<b>未添加({{$store.state.unselect.length}})</b>
							<select multiple @change="notAddHasVal" v-model="notAddVal">
								<option  v-for="item in $store.state.unselect">{{item}}</option>
							</select>
						</div>
					</div>
				</li>
			</ul>
			<ul class="left-menu clear" ref="leftMenu">
				<li :class='-1==ind?"active":""' @click="changeActiveIndex(-1)"><router-link to="/">首页</router-link></li>
				<li v-for="(item,index) in $store.state.selected" :class='index==ind?"active":""' @click="changeActiveIndex(index)">
					<router-link to="/show" @click.native="changeInfoClassify(item)">{{item}}</router-link>
				</li>
			</ul>
			<ul style="float: left;">
				<li class="add-box">
					<button class="add-btn" @dblclick="changeAddBtnText" @click="jumpAddBtnOption">{{isAdd?"+":"-"}}</button>
					<div class="add-content" :style="{display:addContentDisplay}">
						<select class="add-select" v-model="notAddVal" v-show="isAdd" @change="notAddHasVal"  multiple>
							<option v-for="item in this.$store.state.unselect" >{{item}}</option>
						</select>
						<button class="add-del-btn" @click="toLeft" v-if="isAdd">添加</button>
						<select class="add-select" v-model="hasAddVal" v-show="!isAdd" @change="hasAddHasVal" multiple>
							<option v-for="(item,index) in this.$store.state.selected" v-if="index>0">{{item}}</option>
						</select>
						<button class="add-del-btn" @click="toRight" v-if="!isAdd">删除</button>
					</div>
				</li>
			</ul>
			<ul class="right-menu">
				<li v-for="(item,index) in $store.state.others" :class='("others"+index)==ind?"active":""' @click="changeActiveIndex('others'+index)">
					<router-link :to="item.path">{{item.name}}</router-link>
				</li>
			</ul>
		</div>
		<el-tooltip content="个人中心" placement="bottom-end">
			<router-link to="/aboutme" class="head-img-box">
				<img class="head-img" :class='("headimg")==ind?"active-head-img":""' :src="$store.state.isLogin?$store.state.headImgUrl:'../static/headimg/unLogin.png'" @click="changeActiveIndex('headimg')" />
			</router-link>
		</el-tooltip>
	</div>
</template>
<script>
  export default {
    data() {
      return {
		isHome:true,
		isAdd:true,
		imgUrl:"",
		hasAddVal:[],   //已添加中的选中的所有option
		notAddVal:[],    //未添加中的选中的所有option
		addContentDisplay:"none"
      };
    },
    methods: {
	  //改变布局方式
	  changeLayoutType(){
		this.$store.state.layoutType=this.$store.state.layoutType=="fixed"?"flow":"fixed";
		if(this.$store.state.layoutType=="fixed"){
			this.imgUrl=require("../assets/img/fixed_down.jpg");
		}else if(this.$store.state.layoutType=="flow"){
			this.imgUrl=require("../assets/img/fixed_up.jpg");
		}
		this.$emit('toChangeLayout');
	  },
	  //改变当前菜单选项的下标
	  changeActiveIndex(index){
		this.$store.state.activeIndex=index;
	  },
	  //按下向右移动按钮
	  toRight(){
		  let outer=this.hasAddVal;
		  for(let i=0;i<outer.length;i++){
			  let index=this.$store.state.selected.indexOf(outer[i]);
			  if(index!=-1){
				  this.$store.state.selected.splice(index,1)
				  this.$store.state.unselect.push(outer[i])
			  }
		  }
	  },
	  //按下向左移动按钮
	  toLeft(){
		  let outer=this.notAddVal;
		  for(let i=0;i<outer.length;i++){
			let index=this.$store.state.unselect.indexOf(outer[i]);
			if(index!=-1){
				this.$store.state.unselect.splice(index,1)
				this.$store.state.selected.push(outer[i])
			}
		  }
	  },
	  //名为hasAdd的select是否选中了选项
	  hasAddHasVal(){
		  this.notAddVal=[];
	  },
	  //名为notAdd的select是否选中了选项
	  notAddHasVal(){
		   this.hasAddVal=[];
	  },
	  changeAddBtnText(){
		  this.isAdd=!this.isAdd;
	  },
	  jumpAddBtnOption(){
		  let addBox=document.querySelector(".add-box");
		  this.addContentDisplay=this.addContentDisplay=="none"?"block":"none";
		  if(this.addContentDisplay=="none"){
			addBox.style.background="#545c64";
		  }else{
			addBox.style.background="#424A50";
		  }
	  },
	  changeInfoClassify(infoClassify){
		  this.$emit("getInfoClassify",infoClassify)
	  },
    },
	computed:{
		ind(){
			return this.$store.state.activeIndex;
		},
	},
	mounted(){
		//判断是否是首页
		if(this.$route.path!="/"){
			this.isHome=false;
		}else{
			this.isHome=true;
		}
		//根据本地存储初始化布局方式
		if(localStorage.getItem("layoutType")=="fixed"){
			this.imgUrl=require("../assets/img/fixed_down.jpg");
			this.$store.state.layoutType="fixed";
		}else if(localStorage.getItem("layoutType")=="flow"){
			this.imgUrl=require("../assets/img/fixed_up.jpg");
			this.$store.state.layoutType="flow";
		}
		//初始化wrap高度以及当窗口变化的时候动态改变wrap的高度以及根据导航栏左边菜单的高度决定是否隐藏部分菜单项
		let that=this;
		let wrap=document.querySelector(".wrap");
		wrap.style.cssText="height:"+(document.documentElement.clientHeight-3*this.$store.state.rem)+"px;";
		window.onresize=function(){
			wrap.style.cssText="height:"+(document.documentElement.clientHeight-3*that.$store.state.rem)+"px;";
		}
	}
  }
</script>
<style scoped>
	#main-nav{
		position: fixed;
		top: 0;
		padding: 0 3%;
		width: 94%;
		min-width: 30rem;
		z-index: 99;
		height: 3rem;
		background: #545c64;
	}
	.is-fixed{
		cursor: pointer;
		display: block;
		position: absolute;
		top: .4em;
		left: .2rem;
		height: 2.2rem;
		width: 2.2rem;
		border-radius: 50%;
		border: 0;
	}
	.menu-box ul li{
		color: #fff;
		display: inline-block;
		letter-spacing: 0;
		font: 500 1.14rem/3rem "微软雅黑";
		height: 3rem;
		padding: 0 .5rem;
	}
	.menu-box ul a{
		color: #fff;
		display: inline-block;
		height: 100%;
		width: 100%;
	}
	.menu-box ul li:hover{
		background: #424A50;
	}
	.left-menu{
		min-width: 10rem;
		/* width: -webkit-calc(100% - 24rem);
		width: -moz-calc(100% - 24rem);
		width: calc(100% - 24rem); */
		float: left;
		height: 100%;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	#all-item{
		position: relative;
	}
	#all-item:hover #all-box{
		display: block;
	}
	#all-box{
		display: none;
		position: absolute;
		left: 0;
		top: 3rem;
		width: 16rem;
		z-index: 99;
		padding: .5rem .8rem 0;
		overflow: hidden;
		background: #424A50;
	}
	#hasAdd,#notAdd{
		float: left;
		width: 6rem;
		overflow: hidden;
		opacity: .9;
	}
	#hasAdd b,#notAdd b{
		color: #000;
		text-indent: .5rem;
		display: block;
		font: 900 1rem/2rem "微软雅黑";
		background: #999;
	}
	#all-box option:hover{
		background: #888;
	}
	#hasAdd select,#notAdd select{
		width: 100%;
		height: 10rem;
		text-indent: 1rem;
		resize: vertical;
		min-height: 10rem;
		max-height: 40rem;
		font: normal 1rem/2rem "微软雅黑";
		background: #aaa;
	}
	#hasAdd select option:first-child{
		cursor: text;
		color: #666;
		background: #ccc;
	}
	#notAdd{
		float: right;
	}
	#move-btns{
		float: left;
		width: 4rem;
		background: rgba(50,50,50,.3);
	}
	#move-btns button{
		position: absolute;
		top: 50%;
		left: 50%;
		margin-left: -1.5rem;
		width: 3rem;
		border: 2px outset #999;
		background: #888;
		font: 900 1.2rem/1.5rem "微软雅黑";
	}
	#to-right-btn{
		margin-top: -2.6rem;
	}
	#to-left-btn{
		margin-top: .8rem;
	}
	#move-btns button:disabled{
		cursor: text;
		color: #999;
		border: 2px outset #ccc;
		background: #bbb;
	}
	#move-btns button:hover:not(:disabled){
		color: #000;
	    background: #666;	
	}
	#move-btns button:active{
		border: 2px inset #999;
	    background: #777;	
	}
	.right-menu{
		float: right;
		width: 18rem;
		text-align: right;
		height: 100%;
	}
	.right-menu li:last-child{
		margin-right: 2rem;
	}
	.add-box{
		position: relative;
	}
	.add-btn{
		width: 1.8rem;
		height: 1.8rem;
		cursor: pointer;
		font: 900 1.2rem/1.5rem "微软雅黑";
		padding: 0;
		border: 2px outset #ccc;
		vertical-align: middle;
	}
	.add-content{
		position: absolute;
		top: 3rem;
		left: 0;
		z-index: 99;
	}
	.add-select{
		position: absolute;
		left: 0;
		top: 0;
		width: 5rem;
		height: 10rem;
		border: 0;
		background: #424A50;
	}
	.add-select option{
		color: #fff;
		text-indent: .5rem;
		height: 1.5rem;
		line-height: 1.5rem !important;
	}
	.add-select option:hover{
		color: #000;
		background: #aaa;
	}
	.add-btn:active{
		border: 2px inset #ccc;
	}
	.add-del-btn{
		color: #fff;
		position: absolute;
		top: 10rem;
		left: 0;
		width: 5rem;
		border: 0;
		background: #666;
		height: 1.8rem;
		font-weight: 900;
	}
	.add-del-btn:hover{
		color: #000;
		background: #555;
	}
	.active{
		box-sizing: border-box;
		border-bottom: 3px solid #ffd04b;
	}
	.active a{
		color: #ffd04b !important;
	}
	.head-img-box{
		display: block;
		position: absolute;
		top: .1rem;
		right: -moz-calc(3% - 1.4rem); 
		right: -webkit-calc(3% - 1.4rem); 
		right: calc(3% - 1.4rem);
		height: 2.8rem;
		width: 2.8rem;
		border-radius: 50%;
		background: #fff;
	}
	.head-img-box .head-img{
		height: 2.8rem;
		width: 2.8rem;
		border-radius: 50%;
	}
	.active-head-img{
		box-sizing: border-box;
		border: 3px solid #ffd04b;
	}
</style>


