<template>
	<div id="edit-info">
		<div id="message-inform">
			<div class="aboutme-search-wrapper clear">
				<div class="curr-postion">当前位置：<b>编辑资料</b></div>
			</div>
			<ul id="info-list">
				<li>
					<b>账号：</b><input type="text" v-model="number" disabled/>
				</li>
				<li>
					<b>昵称：</b><input type="text" v-model="nickname" />
					<el-switch v-model="nicknameSecrect" active-text="保密"inactive-text="不保密"></el-switch>
				</li>
				<li>
					<b>称谓：</b><input type="text" v-model="title" disabled/>
				</li>
				<li>
					<b>人气：</b><input type="text" v-model="peopleIndex" disabled/>
				</li>
				<li>
					<b>等级：</b><input type="text" v-model="level" disabled/>
				</li>
				<li>
					<b>姓名：</b><input type="text" v-model="name" />
					<el-switch v-model="nameSecrect" active-text="保密"inactive-text="不保密"></el-switch>
				</li>
				<li>
					<b>性别：</b><input type="text" v-model="sex" />
					<el-switch v-model="sexSecrect" active-text="保密"inactive-text="不保密"></el-switch>
				</li>
				<li>
					<b>职业：</b><input type="text" v-model="job" />
					<el-switch v-model="jobSecrect" active-text="保密"inactive-text="不保密"></el-switch>
				</li>
				<li>
					<b>籍贯：</b><input type="text" v-model="nativePlace" />
					<el-switch v-model="nativePlaceSecrect" active-text="保密"inactive-text="不保密"></el-switch>
				</li>
				<li>
					<b>兴趣：</b><input type="text" v-model="hobby" />
					<el-switch v-model="hobbySecrect" active-text="保密"inactive-text="不保密"></el-switch>
				</li>
				<li>
					<b>出生年月：</b><input type="text" v-model="birthday" />
					<el-switch v-model="birthdaySecrect" active-text="保密"inactive-text="不保密"></el-switch>
				</li>
				<li>
					<b>手机号码：</b><input type="text" v-model="tel" />
					<el-switch v-model="telSecrect" active-text="保密"inactive-text="不保密"></el-switch>
				</li>
				<li>
					<b>个人说明：</b><textarea v-model="produce"></textarea>
					<el-switch v-model="produceSecrect" active-text="保密"inactive-text="不保密"></el-switch>
				</li>
			</ul>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				number:"1009",
				nickname:"别样的感动",
				title:"普通用户",
				peopleIndex:"★★☆☆☆",
				level:"12级",
				name:"范力川",
				sex:"男",
				job:"web前端",
				nativePlace:"四川广安",
				hobby:"文字、音乐",
				birthday:"1996.03",
				tel:"18483221518",
				produce:"我喜欢文字类，喜欢研究文学，同样喜欢文学的朋友请记得点击加个关注哦！",
				nicknameSecrect:true,
				nameSecrect:true,
				sexSecrect:true,
				jobSecrect:true,
				nativePlaceSecrect:true,
				hobbySecrect:true,
				birthdaySecrect:true,
				telSecrect:true,
				produceSecrect:true,
			};
		}
	}
</script>

<style scoped>
	#info-list{
		font-size: 1.1rem;
		margin-left: 1.5rem;
		padding: .5rem;
		box-sizing: border-box;
		border-radius: .8rem;
		background: #eee;
	}
	#info-list li{
		margin: 8px;
	}
	#info-list input,#info-list textarea{
		font-size: 1.1rem;
		line-height: 1.8rem;
		border-radius: .3rem;
		padding: 0 .5rem;
		margin-right: 1rem;
		border: 1px solid #ccc;
	}
	#info-list textarea{
		vertical-align: top;
		display: inline-block;
		width: 30rem;
		height: 6rem;
		resize: vertical;
	}
</style>
