<template>
	<div id="wang-editor">
		<div id="menu" style="background: #eec;"></div>
		<div id="edit"></div>
	</div>
</template>

<script>
	import WangEditor from 'wangeditor';
	export default {
		data() {
			return {
				editor: null,
				
			};
		},
		methods:{
			
		},
		mounted() {
			this.editor = new WangEditor('#menu',"#edit");
			this.editor.customConfig.menus = [
				'head',  // 标题
				'bold',  // 粗体
				'fontSize',  // 字号
				'fontName',  // 字体
				'italic',  // 斜体
				'underline',  // 下划线
				'strikeThrough',  // 删除线
				'foreColor',  // 文字颜色
				'backColor',  // 背景颜色
				'link',  // 插入链接
				'list',  // 列表
				'justify',  // 对齐方式
				'quote',  // 引用
				'emoticon',  // 表情
				'image',  // 插入图片
				'table',  // 表格
				// 'video',  // 插入视频
				// 'code',  // 插入代码
				'undo',  // 撤销
				'redo'  // 重复
			]
			this.editor.customConfig.zIndex = 10; //默认为10000
			this.editor.customConfig.onchange = () => {
				this.$emit("getEditContent",this.editor.txt.text(),this.editor.txt.html())
			}
			//上传图片至服务器
			this.editor.customConfig.showLinkImg = false;   //隐藏网络图片的tab
			this.editor.customConfig.uploadImgServer = 'http://localhost:81/upImgtextImg';  // 上传图片到服务器
			this.editor.customConfig.uploadImgMaxLength = 5;    //一次最多只能传5张图片,默认为10000张
			this.editor.customConfig.uploadFileName = 'wangeditor_pic';    //这个参数必需配置，后台用这个值接收图片
			this.editor.customConfig.uploadImgHeaders = {'enctype':'multipart/form-data'}    //设置上传图片的header
			this.editor.customConfig.uploadImgMaxSize = 0.2 * 1024 *1024 ;  //图片大小限制为0.2M
			this.editor.create();
		}
	}
</script>

<style scoped>
	#menu{
		
	  
	}
	#edit{
	  margin-top: -1px;
	  border: 1px solid #ccc;
	  min-height: 500px;
	  height: auto;
	}
	.w-e-text-container{
		height: 500px !important;
	}
	table {
	  border-top: 1px solid #ccc;
	  border-left: 1px solid #ccc;
	}
	table td,
	table th {
	  border-bottom: 1px solid #ccc;
	  border-right: 1px solid #ccc;
	  padding: 3px 5px;
	}
	table th {
	  border-bottom: 2px solid #ccc;
	  text-align: center;
	}
	blockquote {
	  display: block;
	  border-left: 8px solid #d0e5f2;
	  padding: 5px 10px;
	  margin: 10px 0;
	  line-height: 1.4;
	  font-size: 100%;
	  background-color: #f1f1f1;
	}
	code {
	  display: inline-block;
	  *display: inline;
	  *zoom: 1;
	  background-color: #f1f1f1;
	  border-radius: 3px;
	  padding: 3px 5px;
	  margin: 0 3px;
	}
	pre code {
	  display: block;
	}
	ul, ol {
	  margin: 10px 0 10px 20px;
	}
</style>
