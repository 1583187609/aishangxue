import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

const store = new Vuex.Store({
  state: {
		rem:14,   /*根元素html的字体大小*/
		infoClassify:"推荐",
		advIndex:0,   //本次从数据库应该获取的广告的下标
		currInfoParams:{},
		infoParams:{    //加载信息时所需要的各种参数
			recommend:{name:"推荐",key:"recommend",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			commenSense:{name:"常识",key:"commenSense",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			life:{name:"生活",key:"life",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			country:{name:"城乡",key:"country",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			profession:{name:"行业",key:"profession",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			creative:{name:"创意",key:"creative",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			technology:{name:"科技",key:"technology",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			military:{name:"军事",key:"military",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			financeEconomic:{name:"财经",key:"financeEconomic",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			allLife:{name:"人生",key:"allLife",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			leisure:{name:"休闲",key:"leisure",startIndex:[0,0,0],getLength:[5,4,1],info:[]},
			// askAnswer:{name:"问答",key:"askAnswer",startIndex:[0,0,0],getLength:[5,4,1],info:[]}
		},
		isLogin:false,  //是否登录
		loginUserInfo:"",
		headImgUrl:'../static/headimg/flc_headimg.jpg', 
		rememberPagePath:"/",   //记住跳往登录页之前的那个页面路径
		layoutType:"flow",   /*布局类型：flow和fixed*/
		activeIndex: 0,     /*菜单中的当前菜单项的index*/
		selected:["推荐","常识","生活","城乡"],
		unselect:["行业","创意","科技","军事","财经","人生","休闲"],
		allselect:["常识","生活","城乡","行业","创意","科技","军事","财经","人生","休闲"],
		userTitle:["普通用户","领域爱好者","大众专家","领域专家","资深专家"],
		others:[
			{name:"发布",path:"/publish"},
			{name:"商城",path:"/shop"},
			{name:"周边",path:"/surround"},
			// {name:"反馈",path:"/feedback"},
			{name:"登录/注册",path:"/login_regist"}
		],
  },
  mutations: {

  }
});
export default store;

