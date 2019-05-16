<template>
	<div id="publish-record">
		<div id="wait-publish"  v-if="classify=='waitPublish'">
			<div class="num-total clear">
				<label>全选:<input type="radio" name="waitPublish" /></label>
				<label>全不选:<input type="radio" name="waitPublish" /></label>
				<label><input type="button" value="发布" /></label>
				<label><input type="button" value="删除" /></label>
				<span>共有<b>12</b>条待发布记录</span>
			</div>
			<ul>
				<li v-for="(item,index) in 10" class="record-item">
					<input type="checkbox" />
					<router-link to="/">【生活】这里是放标题的地方这里是放标题的地方这里是题的地方这里是放标题的地方这里是放标题的地方这里是放标题的地方</router-link>
					<span>2019-03-27 22:50</span>
					<div class="btns-box">
						<button class="edit-btn">编辑</button>
						<button class="pub-btn">发布</button>
						<button class="del-btn">删除</button>
					</div>
				</li>
			</ul>
		</div>
		<div id="has-publish" v-else-if="classify=='hasPublish'">
			<div class="num-total clear">
				<label>全选:<input type="radio" name="waitPublish" /></label>
				<label>全不选:<input type="radio" name="waitPublish" /></label>
				<label><input type="button" value="删除" /></label>
				<span>共有<b>12</b>条已发布记录</span>
			</div>
			<ul>
				<li v-for="(item,index) in 6" class="record-item">
					<input type="checkbox" />
					<router-link to="/">【常识】这里是放标题的地方这里是放标题的地方这里是题的地方这里是放标题的地方这里是放标题的地方这里是放标题的地方</router-link>
					<span>2019-03-27 22:50</span>
					<div class="btns-box">
						<button class="edit-btn">编辑</button>
						<button class="del-btn">删除</button>
					</div>
				</li>
			</ul>
		</div>
		<div id="has-delete" v-else-if="classify=='hasDelete'">
			<div class="num-total clear">
				<label>全选:<input type="radio" name="waitPublish" /></label>
				<label>全不选:<input type="radio" name="waitPublish" /></label>
				<label><input type="button" value="恢复" /></label>
				<span>共有<b>12</b>条已删除记录</span>
			</div>
			<ul>
				<li v-for="(item,index) in 12" class="record-item">
					<input type="checkbox" />
					<router-link to="/">【兼职/全职】这里是放标题的地方这里是放标题的地方这里是题的地方这里是放标题的地方这里是放标题的地方这里是放标题的地方</router-link>
					<span>2019-03-27 22:50</span>
					<div class="btns-box">
						<button class="recover-btn">恢复</button>
					</div>
				</li>
			</ul>
		</div>
		<div id="fail-publish" v-else-if="classify=='failPublish'">
			<div class="num-total clear">
				<label>全选:<input type="radio" name="waitPublish" /></label>
				<label>全不选:<input type="radio" name="waitPublish" /></label>
				<label><input type="button" value="发布" /></label>
				<label><input type="button" value="删除" /></label>
				<span>共有<b>12</b>条发布失败记录</span>
			</div>
			<ul>
				<li v-for="(item,index) in 18" class="record-item">
					<input type="checkbox" />
					<router-link to="/">【城乡】这里是放标题的地方这里是放标题的地方这里是题的地方这里是放标题的地方这里是放标题的地方这里是放标题的地方</router-link>
					<span>2019-03-27 22:50</span>
					<div class="btns-box">
						<button class="edit-btn">编辑</button>
						<button class="pub-btn">发布</button>
						<button class="del-btn">删除</button>
					</div>
				</li>
			</ul>
		</div>
	</div>
</template>

<script>
	export default {
		props:["classify"],
		data() {
			return {
				
			};
		}
	}
</script>

<style scoped>
	/*********public***********/
	#publish-record{
		font-size: 1rem;
	}
	.num-total{
		margin-left: 2.5rem;
		height: 1.8rem;
		line-height: 1.8rem;
		border-bottom: 1px solid #666;
	}
	.num-total label{
		float: left;
		margin-right: 1rem;
	}
	.num-total span{
		float: right;
	}
	.record-item{
		position: relative;
		height: 3rem;
		line-height: 3rem;
		font-size: 1.14rem;
		margin-left: 2.5rem;
		border-bottom: 1px solid #ccc;
	}
	.record-item [type="checkbox"]{
		position: absolute;
		left: -2.5rem;
		top: 50%;
		margin-top: -0.7rem;
		height: 1.4rem;
		width: 1.4rem;
	}
	.record-item a{
		color: #000;
		height: 3rem;
		line-height: 3rem;
		margin-right: 20rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	.record-item span{
		color: #333;
		display: inline-block;
		position: absolute;
		right: 10.5rem;
		top: 0;
		width: 9rem;
		font-size: 1rem;
	}
	.record-item .btns-box{
		position: absolute;
		right: 0;
		top: 0;
		text-align: right;
	}
	.record-item button{
		width: 3rem;
		height: 2rem;
		padding: 0;
	}
</style>
