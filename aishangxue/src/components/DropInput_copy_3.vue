<!-- 下拉输入框 -->
<!-- 
	1、通过传入正则表达式参数，可对传入的options选项进行过滤，留下合适的option；
	2、支持五笔输入、数字输入、键盘输入，同时校验输入(传入正则表达式)
 -->
<template>
	<div class="drop-input">
		<label :class="isInputFocus?'input-focus':'input-blur'" v-popover:popover1>
			<input type="text" placeholder="请选择或输入" 
				@focus="isInputFocus=true" 
				@blur="isInputFocus=false" 
				@keyup.enter="inputEnter" 
				@keyup.up="activeIndexReduce" 
				@keyup.down="activeIndexAdd" 
				@input="inputCheckVal"
				
				v-model="inputVal" 
			/>
			<i :class="isInputFocus?'el-icon-arrow-up':'el-icon-arrow-down'"></i>
		</label>
		<el-popover ref="popover1" placement="top-start" width="210" trigger="focus">
			<ul>
				<li :class="activeIndex==index?'active-li':''" v-for="(item,index) in newOptions" @click="clickLi(item.option,index)">{{item.id+' | '+item.option}}</li>
			</ul>
		</el-popover>
	</div>
</template>

<script>
	export default {
		props:["options","regex"],
		data() {
			return {
				inputVal:"",
				newOptions: [],
				activeIndex:null,
			    isInputFocus:false
			}
		},
		methods:{
			//点击option项
			clickLi(val,index){
				this.inputVal=val;
				this.activeIndex=null;
				this.$refs.popover1.showPopper=false;
			},
			//当输入框获得焦点时并且enter键弹起时，才会执行
			inputEnter(){
				if(this.activeIndex!=null){
					this.inputVal=this.newOptions[this.activeIndex].option;
					this.$refs.popover1.showPopper=false;
					this.activeIndex=null
				}
			},
			//activeIndex值增加
			activeIndexAdd(){
				if(this.activeIndex==null || this.activeIndex>this.newOptions.length-2){
					this.activeIndex=0;
				}else{
					this.activeIndex++;
				}
			},
			//activeIndex值减少
			activeIndexReduce(){
				this.activeIndex--;
				if(this.activeIndex<0){
					this.activeIndex=this.newOptions.length-1;
				}
			},
			//在输入框进行输入时，进行各种条件判断
			inputCheckVal(){
				console.log("在执行")
				let tempOptions=[];                           //符合正则表达式规则的options的临时存放的容器
				let onlyNumberReg=/^[0-9]+$/;                 //只包含数字
				let onlyLetterReg=/^[A-Za-z]+$/;              //只包含字母，不区分大小写
				let onlyHanziReg=/^[\u4e00-\u9fa5]+$/;        //只包含汉字
				let inpVal=this.inputVal.toLowerCase();
				let optionLength=this.newOptions.length;
				// this.$refs.popover1.showPopper=true;
				if(inpVal.trim()==""){
					if(this.regex){
						this.regexFilter();
					}else{
						for(let i=0;i<this.options.length;i++){
							this.newOptions[i]=this.options[i];
						}
						
					}
				}else{
					if(onlyNumberReg.test(inpVal)){                      //输入框内的值为纯数字类型
						for(let i=0;i<optionLength;i++){
							if(this.newOptions[i].id==inpVal){
								tempOptions.push(this.newOptions[i]);
								break;
							}
						}
					}else if(onlyLetterReg.test(inpVal)){                 //输入框内的值为纯字母类型
						let inpValLength=inpVal.length;
						for(let i=0;i<optionLength;i++){
							let py=this.newOptions[i].py.toLowerCase();      //拼音
  							if(py.substr(0,inpValLength)==inpVal){
								tempOptions.push(this.options[i])
							}
						}
					}else if(onlyHanziReg.test(inpVal)){                 //输入框内的值为中文汉字类型
						for(let i=0;i<optionLength;i++){
							let zw=this.newOptions[i].option;               //中文
							if(zw.substr(0,inpValLength)==inpVal){
								tempOptions.push(this.newOptions[i])
							}
						}
					}
					this.newOptions=tempOptions;
				}
			},
			//使用正则表达式对options数据进行过滤
			regexFilter(){
				let regex=this.regex;
				let tempOptions=[];
				let options=this.options;
				for(let i=0;i<options.length;i++){
					let optionStr=JSON.stringify(options[i])
					if(regex.test(optionStr)){
						tempOptions.push(this.options[i])
					}
				}
				this.newOptions=tempOptions;
			}
		},
		computed:{
			
		},
		watch:{
			newOptions:function () {
				if(this.newOptions.length==0){
					this.$refs.popover1.showPopper=false
				}else if(this.newOptions.length==1){
					this.activeIndex=0;
				}
			},
		},
		mounted(){
			if(this.regex){
				this.regexFilter();
			}else{
				this.newOptions=this.options;
			}
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
		outline: none;
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
		margin: 0;
		padding: 0;
	}
	ul li{
		list-style: none;
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
