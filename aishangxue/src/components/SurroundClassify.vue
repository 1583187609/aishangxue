<template>
	<div id="surround-classify">
		<div v-if="menuClassify=='all'">
			<div class="page-banner">
				<strong>游弋周边，发现益事</strong>
			</div>
			<form class="condition">
				<label id="job-type">类型:
					<select name="jobType">
						<option>全部</option>
						<option>兼职</option>
						<option>全职</option>
					</select>
				</label>
				<label id="distance">距离:
					<select name="distance">
						<option>1公里以内</option>
						<option>3公里以内</option>
						<option>5公里以内</option>
						<option>7公里以内</option>
						<option>9公里以内</option>
					</select>
				</label>
				<label id="distance">发布时间:
					<select name="distance">
						<option>1小时以内</option>
						<option>3小时以内</option>
						<option>5小时以内</option>
						<option>7小时以内</option>
						<option>9小时以内</option>
					</select>
				</label>
				<label id="key-words">关键字:<input type="text" name="keyWords" placeholder="请输入关键字" /></label>
				<input type="submit" value="一键筛选" />
			</form>
		</div>
		<div v-if="menuClassify=='partFullJob'">
			<div class="page-banner">
				<strong>兼/全职就在你身边</strong>
			</div>
			<form class="condition">
				<label id="job-type">类型:
					<select name="jobType">
						<option>全部</option>
						<option>兼职</option>
						<option>全职</option>
					</select>
				</label>
				<label id="distance">距离:
					<select name="distance">
						<option>1公里以内</option>
						<option>3公里以内</option>
						<option>5公里以内</option>
						<option>7公里以内</option>
						<option>9公里以内</option>
					</select>
				</label>
				<label id="distance">发布时间:
					<select name="distance">
						<option>1小时以内</option>
						<option>3小时以内</option>
						<option>5小时以内</option>
						<option>7小时以内</option>
						<option>9小时以内</option>
					</select>
				</label>
				<label id="key-words">关键字:<input type="text" name="keyWords" placeholder="请输入关键字" /></label>
				<input type="submit" value="一键筛选" />
			</form>
			<div class="flex-box">
				<job-display v-for="item in 6"></job-display>
			</div>
		</div>
		<div v-if="menuClassify=='secondDeal'">
			<div class="page-banner">
				<strong>二手交易</strong>
			</div>
			<form class="condition">
				<label id="job-type">类型:
					<select name="jobType">
						<option>全部</option>
						<option>兼职</option>
						<option>全职</option>
					</select>
				</label>
				<label id="distance">距离:
					<select name="distance">
						<option>1公里以内</option>
						<option>3公里以内</option>
						<option>5公里以内</option>
						<option>7公里以内</option>
						<option>9公里以内</option>
					</select>
				</label>
				<label id="distance">发布时间:
					<select name="distance">
						<option>1小时以内</option>
						<option>3小时以内</option>
						<option>5小时以内</option>
						<option>7小时以内</option>
						<option>9小时以内</option>
					</select>
				</label>
				<label id="key-words">关键字:<input type="text" name="keyWords" placeholder="请输入关键字" /></label>
				<input type="submit" value="一键筛选" />
			</form>
			<div class="flex-box">
				<seconddeal-display v-for="item in 6"></seconddeal-display>
			</div>
		</div>
		<div v-if="menuClassify=='findPoster'">
			<div class="page-banner">
				<strong>寻_启事</strong>
			</div>
			<form class="condition">
				<label id="job-type">类型:
					<select name="jobType">
						<option>全部</option>
						<option>兼职</option>
						<option>全职</option>
					</select>
				</label>
				<label id="distance">距离:
					<select name="distance">
						<option>1公里以内</option>
						<option>3公里以内</option>
						<option>5公里以内</option>
						<option>7公里以内</option>
						<option>9公里以内</option>
					</select>
				</label>
				<label id="distance">发布时间:
					<select name="distance">
						<option>1小时以内</option>
						<option>3小时以内</option>
						<option>5小时以内</option>
						<option>7小时以内</option>
						<option>9小时以内</option>
					</select>
				</label>
				<label id="key-words">关键字:<input type="text" name="keyWords" placeholder="请输入关键字" /></label>
				<input type="submit" value="一键筛选" />
			</form>
			<div class="flex-box">
				<findposter-display v-for="item in 6"></findposter-display>
			</div>
		</div>
		<div v-if="menuClassify=='freePublish'">
			<div class="page-banner">
				<strong>自定义</strong>
			</div>
			<form class="condition">
				<label id="job-type">类型:
					<select name="jobType">
						<option>全部</option>
						<option>兼职</option>
						<option>全职</option>
					</select>
				</label>
				<label id="distance">距离:
					<select name="distance">
						<option>1公里以内</option>
						<option>3公里以内</option>
						<option>5公里以内</option>
						<option>7公里以内</option>
						<option>9公里以内</option>
					</select>
				</label>
				<label id="distance">发布时间:
					<select name="distance">
						<option>1小时以内</option>
						<option>3小时以内</option>
						<option>5小时以内</option>
						<option>7小时以内</option>
						<option>9小时以内</option>
					</select>
				</label>
				<label id="key-words">关键字:<input type="text" name="keyWords" placeholder="请输入关键字" /></label>
				<input type="submit" value="一键筛选" />
			</form>
			<div class="flex-box">
				<freepublish-display v-for="item in 6"></freepublish-display>
			</div>
		</div>
	</div>
</template>

<script>
	import JobDisplay from "../components/JobDisplay.vue"
	import SeconddealDisplay from "../components/SeconddealDisplay.vue"
	import FindposterDisplay from "../components/FindposterDisplay.vue"
	import FreepublishDisplay from "../components/FreepublishDisplay.vue"
	export default {
		components:{
			JobDisplay,SeconddealDisplay,FindposterDisplay,FreepublishDisplay
		},
		props:["menuClassify"],
		data() {
			return {
				
			};
		}
	}
</script>

<style scoped>
	/*********public***********/
	.page-banner{
		height: 6rem;
		background: pink;
	}
	.page-banner strong{
		color: green;
		padding: 0 .3em;
		margin-left: .6em;
		font: 900 2.6rem/4rem "华文行楷";
		border-bottom: 2px solid green;
	}
	.flex-box{
		display: flex;
		justify-content: flex-start;
		flex-wrap: wrap;
	}
</style>
