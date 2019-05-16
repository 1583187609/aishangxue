<!-- 普通下拉输入框 -->
<template>
	<div class="drop-input">
		<label :class="isInputFocus?'input-focus':'input-blur'" v-popover:popover1>
			<input type="text" placeholder="请选择或输入" @focus="isInputFocus=true" @blur="isInputFocus=false" @keyup.enter="inputEnter" @keyup.up="activeIndexReduce" @keyup.down="activeIndexAdd" v-model="inputVal" />
			<i :class="isInputFocus?'el-icon-arrow-up':'el-icon-arrow-down'"></i>
		</label>
		<el-popover ref="popover1" placement="top-start" width="210" trigger="focus">
			<ul>
				<li :class="activeIndex==index?'active-li':''" v-for="(item,index) in options" @click="clickLi(item.option,index)">{{index+' | '+item.option}}</li>
			</ul>
		</el-popover>
	</div>
</template>

<script>
	//满足五笔输入、数字输入、键盘输入的需求，同时校验输入
	export default {
		props:["options"],
		data() {
			return {
				inputVal:"",
				activeIndex:null,
			    isInputFocus:false
			}
		},
		methods:{
			clickLi(val,index){
				this.inputVal=val;
				this.activeIndex=index;
			},
			inputEnter(){
				let isNaNType=isNaN(this.inputVal)
				if(!isNaNType){
					for(let i=0;i<this.options.length;i++){
						if(this.inputVal==i){
							this.activeIndex=i;
							this.inputVal=this.options[i].option;
						}
					}
				}else{
					this.inputVal=this.options[this.activeIndex].option;
				}
			},
			activeIndexAdd(){
				this.activeIndex++;
				if(this.activeIndex>this.options.length-1){
					this.activeIndex=0;
				}
			},
			activeIndexReduce(){
				this.activeIndex--;
				if(this.activeIndex<0){
					this.activeIndex=this.options.length-1;
				}
			}
		},
		computed:{
			
		}
	}
</script>

<style scoped>
	.drop-input{
		position: relative;
	}
	.input-focus{
		border: 1px solid blue;
	}
	.input-blur{
		border: 1px solid #ddd;
	}
	label{
		cursor: pointer;
		display: inline-block;
		height: 40px;
		border-radius: 5px;
		box-sizing: border-box;
	}
	label input{
		width: 200px;
		border: 0;
		height: 100%;
		padding: 0 0 0 10px;
		font-size: 14px;
		box-sizing: border-box;
		border-radius: 5px 0 0 5px;
	}
	label i{
		color: #ddd;
		display: inline-block;
		width: 30px;
		font-weight: 500;
		text-align: center;
	}
	ul{
		
	}
	ul li{
		cursor: pointer;
		text-indent: 8px;
		line-height: 25px;
	}
	ul li:hover{
		background: #eef;
	}
	.active-li{
		background: #eef;
	}
</style>
