<template>
	<div class="goods-display">
		<div class="img-box">
			<img src="../assets/img/shouji_1.jpg" />
		</div>
		<div class="text-box">
			<div class="description">这是一段描述性的文字，是用来简单描述商品的，现在的文字就比较长了</div>
			<div class="others">
				<del>34￥</del>
				<ins>29.9￥</ins>
				<span>月销123件</span>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				imgBoxHeight:0
			};
		},
		mounted() {
			let imgBox=this.$refs.imgBox;
			let goodsDisplay=this.$refs.goodsDisplay;
		}
	}
</script>

<style scoped>
	.goods-display{
		width: 18.5%;
		margin: .75%;
		border: 1px solid #bbb;
		border-radius: .5rem;
		box-sizing: border-box;
		overflow: hidden;
		background: #fff;
	}
	.img-box{
		width: 100%;
		background: #ccc;
	}
	.img-box img{
		display: block;
		width: 100%;
	}
	.text-box{
		background: #aaa;
	}
	.description{
		text-align: left;
		padding: 0 .2rem;
		font: normal 1.1rem/1.6rem "微软雅黑";
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.others{
		color: #444;
		text-align: center;
		font-size: 1rem;
		line-height: 2rem;
	}
	.others del{
		float: left;
		margin-top: .4rem;
		margin-left: .5rem;
	}
	.others ins{
		color: #f00;
		font-weight: 900;
		font-size: 1.2rem;
		line-height: 2.2rem;
	}
	.others span{
		float: right;
		margin-top: .4rem;
		margin-right: .5rem;
	}
</style>
