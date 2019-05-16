<template>
	<div class="job-item">
		<div class="head clear">
			<strong>兼职</strong>
			<span>1天前</span>
			<button>私聊</button>
		</div>
		<div class="body clear">
			<img src="../assets/img/user_touxiang.jpg" />
			<ul>
				<li><b>职责：</b>洗碗工</li>
				<li><b>时间：</b>2019.03.27--2019.03.31</li>
				<li><b>地点：</b>成都市武侯区科华北路磨子巷</li>
				<li><b>薪酬：</b>200元/天</li>
				<li><b>电话：</b>18483221518</li>
				<li class="special-say"><b>特别说明：</b><span>吃苦耐劳，薪酬好谈吃苦耐劳，薪酬好谈，需要加班赶时间，抗压能力强者优先。</span></li>
			</ul>
		</div>
		<div class="describe-box clear">
			<b>描述</b>
			<div class="job-describe">
			这是对工作的描述这是对工作的描述是对工作的描述这是对工作的是对工作的描述这是对工作的是对工作的描述这是对工作的这是对工作的描述这是对工作的描述这是对工作的描述这是对工作的描述这是对工作的描述这是对工作的描述
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				
			};
		}
	}
</script>

<style scoped>
	.job-item{
		width: 31%;
		border: 1px solid #ccc;
		margin: 1%;
		border: 1px solid #666;
		border-radius: .5rem;
		overflow: hidden;
		background: #fff;
	}
	.head{
		text-align: center;
		height: 2.5rem;
		background: #aaa;
	}
	.head strong{
		float: left;
		font: 700 1.3rem/2rem "微软雅黑";
		height: 2rem;
		padding: 0 1rem;
		margin: .25rem .5rem;
		border-radius: .5rem;
		background: #eef;
	}
	.head span{
		color: #333;
		position: relative;
		top: .9rem;
		font: normal .8rem/1.4rem;
		height: 1.4rem;
		margin-top: .9rem;
	}
	.head button{
		color: #fff;
		float: right;
		font: normal 1.1rem "微软雅黑";
		height: 2rem;
		margin: .25rem .5rem;
		background: #aaa;
	}
	.body{
		width: 100%;
		margin: .2rem 0;
		background: #eee;
	}
	.body img{
		float: left;
		height: 10.5rem;
		width: 34%;
		margin: 0 .5% 0 1.5%;
	}
	.body ul{
		float: left;
		width: 60%;
		height: 10.5rem;
		padding: 0 2%;
		background: #eef;
	}
	.body li{
		line-height: 1.5rem;
		height: 1.5rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	.body .special-say{
		height: 3.2rem;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.describe-box{
		height: 4.5rem;
		width: 100%;
		margin-bottom: .3rem;
		background: #ddd;
	}
	.describe-box b{
		float: left;
		font-size: 1.14rem;
		width: 2rem;
		height: 100%;
		line-height: 1.6rem;
		text-align: center;
		box-sizing: border-box;
		padding-top: .6rem;
		background: #aaa;
	}
	.job-describe{
		float: left;
		font-size: 1.1rem;
		line-height: 1.5rem;
		height: 100%;
		width: -webkit-calc(100% - 2rem);
		width: -moze-calc(100% - 2rem);
		width: calc(100% - 2rem);
		box-sizing: border-box;
		padding: 0 .6rem;
		overflow: auto;
		background: #ddd;
	}
</style>
