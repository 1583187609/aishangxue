/****************声明变量******************/
let svgCaptcha = require('svg-captcha');
let answerFormId=0;


/****************声明方法（前端）******************/
//自动登录
function autoLogin(req,res){
	let body=req.body;
	let sql="select * from user where number=? and pwd=?";
	mydb.query(sql,[body.number,body.pwd],(err,result)=>{  //用户用爱尚账号登录
		if(err){console.log("在数据库查找数据时发生了错误："+err);return;}
		else if(result.length!=0){
			res.send(result)
		}
	})
}
//用户注册
function userRegist(req,res){
	let body=req.body;
	let sql="select * from user where tel=?";
	mydb.query(sql,[body.tel],(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err);return;}
		else if(result.length!=0){
			res.send("This telnumber has been registed!")
		}else{
			let sq="insert into user(nickname,pwd,tel,head_img,name,sex,native_place,job,hobby,birthday,produce,regist_time) values (?,?,?,?,?,?,?,?,?,?,?,now())";
			let name=sex=native_place=job=hobby=birthday={};
			let valArr=[];
			let head_img="";
			if(sex.val==2){head_img="default_woman.png"}
			else{head_img="default_man.png"}
			name.val=body.name;
			name.secret=body.nameSecret;
			name=JSON.stringify(name);
			sex.val=body.sex;
			sex.secret=body.sexSecret;
			sex=JSON.stringify(sex);
			native_place.val=body.native_place;
			native_place.secret=body.nativePlaceSecret;
			native_place=JSON.stringify(native_place);
			job.val=body.job;
			job.secret=body.jobSecret;
			job=JSON.stringify(job);
			hobby.val=body.hobby;
			hobby.secret=body.hobbySecret;
			hobby=JSON.stringify(hobby);
			birthday.val=body.birthday;
			birthday.secret=body.birthdaySecret;
			birthday=JSON.stringify(birthday);
			valArr=[body.nickname,body.pwd,body.tel,head_img,name,sex,native_place,job,hobby,birthday,body.produce];
			mydb.query(sq,valArr,(err,result)=>{
				if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
				else{
					res.send("regist success!");
				}
			})
		}
	})
}
//用户登录
function userLogin(req,res){
	let body=req.body;
	let sql_1="select * from user where number=? and pwd=?";
	let sql_2="select * from user where tel=? and pwd=?";
	mydb.query(sql_1,[body.tel,body.pwd],(err,result)=>{  //用户用爱尚账号登录
		if(err){console.log("在数据库查找数据时发生了错误："+err);return;}
		else if(result.length==0){
			mydb.query(sql_2,[body.tel,body.pwd],(err,result)=>{    //用户用电话号码登录
				if(err){console.log("在数据库查找数据时发生了错误："+err);return;}
				else if(result.length!=0){
					if(body.code){
						if(body.code.toLowerCase()!=captcha.text.toLowerCase()){res.send({feedback:"code err!",data:""})}
						else{res.send({feedback:"login success!",data:result})}
					}else{
						res.send(result)
					}
				}
				else{
					res.send({feedback:"name and passward not match!",data:""})
				}
			})
		}
		else if(result.length!=0){
			if(body.code){
				if(body.code.toLowerCase()!=captcha.text.toLowerCase()){res.send({feedback:"code err!",data:""})}
				else{res.send({feedback:"login success!",data:result})}
			}else{
				res.send(result)
			}
		}else{
			res.send({feedback:"name and passward not match!",data:""})
		}
	})
}
//用户获取登录验证码
let captcha;
function getCode(req,res){
	captcha=svgCaptcha.create({
		background:"#aaa",
		color:false,
		width:78,
		noise:3,
		height:32,
		fontSize:30,
		ignoreChars:'0o1i'
	});
	req.session.coder = captcha.text;
	res.type('svg');
	res.status(200).send(captcha.data);
}
//用户发布问题
function publishQuestion(req,res){
	let query=req.query;
	console.log(query)
	let sql="insert into info_question(classify,question,author_headimg,author_nickname,author_title,author_number,publish_time) values (?,?,?,?,?,?,now())";
	let arr=[query.classify,query.question,query.author_headimg,query.author_nickname,query.author_title,query.author_number];
	mydb.query(sql,arr,(err,result)=>{  
		if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
		else{res.send("success");}
	})
}
//请求用户提的问题
function getAnswers(req,res){
	let sql="select * from info_question";
	mydb.query(sql,(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err);return;}
		else{
			res.send(result);
		}
	})
}
//发布回答
function publishAnswer(req,res){
	let query=req.query;
	let tableName="answer_"+query.questionId;
	let hasTable="select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='aishangxue' and TABLE_NAME='"+tableName+"'";
	mydb.query(hasTable,(err,result)=>{  
		if(err){console.log("在查找是否有指定表时发生了错误："+err);return;}
		else if(result.length!=0){insertData(mydb);}
		else{
			let createTable="create table "+tableName+" LIKE answer_0";
			mydb.query(createTable,(err,result)=>{  
				if(err){console.log("在创建数据表时发生了错误："+err);return;}
				else{insertData(mydb);}
			})
		}
		//公共函数
		function insertData(mydb){
			let sql="insert into "+tableName+"(author_headimg,author_nickname,author_number,answer,publish_time) values (?,?,?,?,now())"
			let arr=[query.author_headimg,query.author_nickname,query.author_number,query.answer];
			mydb.query(sql,arr,(err,result)=>{
				if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
				else{
					res.send("success")
				}
			})
		}
	})
}
//上传wangeditor中的图片
function upImgtextImg(req,res){
	console.log(req.body);
	console.log(req.file);
	let obj={};
	let body=req.body;
	let file=req.file;
	let imgUrl="http://localhost:81/imgtextimg/"+file.filename;
	obj.errno=0;
	obj.data=[];
	obj.data.push(imgUrl);
	res.send(obj)
}
//发布图文
function publishImgText(req,res){
	let body=req.body;
	console.log(body)
	let sql="insert into info_imgtext(classify,title,imgtext,author_headimg,author_nickname,author_title,author_number,publish_time) values (?,?,?,?,?,?,?,now())";
	let arr=[body.classify,body.title,body.imgtext,body.author_headimg,body.author_nickname,body.author_title,body.author_number];
	mydb.query(sql,arr,(err,result)=>{  
		if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
		else{res.send("success");}
	})
}
//上传视频
function uploadVideo(req,res){
	let file=req.file;
	let body=req.body;
	console.log(body)
	let videoName=file.filename;
	let sql="insert into info_video(classify,title,video,author_headimg,author_nickname,author_title,author_number,publish_time) values (?,?,?,?,?,?,?,now())";
	let arr=[body.classify,body.title,videoName,body.author_headimg,body.author_nickname,body.author_title,body.author_number];
	mydb.query(sql,arr,(err,result)=>{  
		if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
		else{res.send("success");}
	})
}
//发布兼职、全职
function publishJob(req,res){
	let body=req.body;
	let file=req.file;
	console.log(req.body);
	console.log(req.file);
	let img=file.filename+"."+file.originalname.split(".")[1];
	let sql="insert into info_job(job_type,author_number,img,name,time,site,payment,special,description,tel,publish_time) values (?,?,?,?,?,?,?,?,?,?,now())";
	let arr=[body.job_type,body.author_number,img,body.name,body.time,body.site,body.payment,body.special,body.description,body.tel];
	mydb.query(sql,arr,(err,result)=>{  
		if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
		else{res.send("success");}
	})
}
//发布二手转卖信息
function publishSecond(req,res){
	let body=req.body;
	let file=req.file;
	console.log(req.body);
	console.log(req.file);
	let img=file.filename+"."+file.originalname.split(".")[1];
	let sql="insert into info_seconddeal(author_number,img,name,price,what_new,special,description,tel,publish_time) values (?,?,?,?,?,?,?,?,now())";
	let arr=[body.author_number,img,body.name,body.price,body.what_new,body.special,body.description,body.tel];
	mydb.query(sql,arr,(err,result)=>{  
		if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
		else{res.send("success");}
	})
}
//发布寻_启事信息
function publishFind(req,res){
	let body=req.body;
	let file=req.file;
	console.log(req.body);
	console.log(req.file);
	let img=file.filename+"."+file.originalname.split(".")[1];
	let sql="insert into info_findposter(author_number,img,title,tel,special,content,publish_time) values (?,?,?,?,?,?,now())";
	let arr=[body.author_number,img,body.title,body.tel,body.special,body.content];
	mydb.query(sql,arr,(err,result)=>{  
		if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
		else{res.send("success");}
	})
}
//发布自定义信息
function publishFree(req,res){
	let body=req.body;
	let file=req.file;
	console.log(req.body);
	console.log(req.file);
	let img=file.filename+"."+file.originalname.split(".")[1];
	let sql="insert into info_freepublish(author_number,img,labels,special,content,publish_time) values (?,?,?,?,?,now())";
	let arr=[body.author_number,img,body.labels,body.special,body.content];
	mydb.query(sql,arr,(err,result)=>{  
		if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
		else{res.send("success");}
	})
}
//获取混合数据：图文、视频、问答、广告
function getInfo(req,res){
	// console.log(req.query)
	let sql="";
	let startIndex=req.query.startIndex;
	let getLength=req.query.getLength;
	let infoClassify=req.query.infoClassify;
	if(infoClassify=="推荐"){
		sql=`select * from info_imgtext limit ${startIndex[0]},${getLength[0]};
			select * from info_video limit ${startIndex[1]},${getLength[1]};
			select * from info_question limit ${startIndex[2]},${getLength[2]};`;
	}else{
		sql=`select * from info_imgtext where find_in_set("${infoClassify}",classify) limit ${startIndex[0]},${getLength[0]};
			select * from info_video where find_in_set("${infoClassify}",classify) limit ${startIndex[1]},${getLength[1]};
			select * from info_question where find_in_set("${infoClassify}",classify) limit ${startIndex[2]},${getLength[2]};`;
	}
	if(startIndex[3]){sql+=`select * from info_adv limit ${startIndex[3]},${getLength[3]};`}
	mydb.query(sql,(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err)}
		else{
			console.log(result);
			res.send(result)
		}
	})
}
//发布show页面的评论
function publishShowComment(req,res){
	console.log(req.query)
	let query=req.query;
	let infoType=query.currInfoType;
	if(infoType=="vid"){infoType="video"}
	else if(infoType=="imt"){infoType="imgtext"}
	let tableName="comment_"+infoType+"_"+query.currInfoId;
	let hasTable="select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='aishangxue' and TABLE_NAME='"+tableName+"'";
	mydb.query(hasTable,(err,result)=>{  
		if(err){console.log("在查找是否有指定表时发生了错误："+err);return;}
		else if(result.length!=0){insertData(mydb);}
		else{                                    
			let createTable="create table "+tableName+" LIKE comment_"+infoType+"_0";
			mydb.query(createTable,(err,result)=>{  
				if(err){console.log("在创建数据表时发生了错误："+err);return;}
				else{insertData(mydb);}
			})
		}
		//公共函数
		function insertData(mydb){
			let sql="insert into "+tableName+"(author_headimg,author_nickname,author_number,comment,publish_time) values (?,?,?,?,now())"
			let arr=[query.author_headimg,query.author_nickname,query.author_number,query.comment];
			mydb.query(sql,arr,(err,result)=>{
				if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
				else{
					res.send("success")
				}
			})
		}
	})
}
//获取show页面的评论
function getShowComment(req,res){
	console.log(req.query)
	let tableName="";
	let startIndex=req.query.startIndex;
	let getLength=req.query.getLength;
	let currInfoId=req.query.currInfoId;
	let currInfoType=req.query.currInfoType;
	if(currInfoType=="vid"){tableName="comment_video_"+currInfoId;}
	else if(currInfoType=="imt"){tableName="comment_imgtext_"+currInfoId;}
	let hasTable="select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='aishangxue' and TABLE_NAME='"+tableName+"'";
    mydb.query(hasTable,(err,result)=>{  
    	if(err){console.log("在查找是否有指定表时发生了错误："+err);return;}
    	else if(result.length==0){res.send("no any comment!")}
    	else{
			// let sql=`select * from ${tableName} limit ${startIndex},${getLength};`
    		let sql=`select * from ${tableName} order by publish_time DESC,id DESC;`
			mydb.query(sql,(err,result)=>{
				if(err){console.log("在数据库查找数据时发生了错误："+err)}
				else{
					console.log(result);
					res.send(result)
				}
			})
    	}
	})
}
//更新show页面的评论
function updateShowComment(req,res){
	let query=req.query;
	console.log("这是传过来的新消息：",query);
	let currInfoType="";
	if(query.currInfoType=="vid"){currInfoType="video"}
	else if(query.currInfoType=="imt"){currInfoType="imgtext"}
	let sql=`select * from comment_${currInfoType}_${query.currInfoId} order by publish_time DESC,id DESC;`
	mydb.query(sql,(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err)}
		else{
			res.send(result)
		}
	})
}
//获取当前作者信息
function getAuthorInfo(req,res){
	let query=req.query;
	console.log(query)
	let sql=`select * from user where number=${query.authorNumber};`
	mydb.query(sql,(err,result)=>{
		if(err){console.log("在数据库查找数据时发生了错误："+err)}
		else{
			res.send(result[0])
		}
	})
}
//获取当前show页面问题的回答数据
function getShowAnswer(req,res){
	let query=req.query;
	console.log(query)
	let hasTable="select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='aishangxue' and TABLE_NAME='answer_"+query.questionId+"'";
	mydb.query(hasTable,(err,result)=>{  
		if(err){console.log("在查找是否有指定表时发生了错误："+err);return;}
		else if(result.length==0){res.send("no any answer!")}
		else{
			let sql=`select * from answer_${query.questionId} order by publish_time DESC,id DESC;`
			mydb.query(sql,(err,result)=>{
				if(err){console.log("在数据库查找数据时发生了错误："+err)}
				else{
					res.send(result)
				}
			})
		}
	})
	
	
	
	
	
// 	let sql=`select * from answer_${query.questionId};`
// 	mydb.query(sql,(err,result)=>{
// 		if(err){console.log("在数据库查找数据时发生了错误："+err)}
// 		else{
// 			res.send(result)
// 		}
// 	})
}


function testFunction(req,res){
	console.log("testFunction……")
}

/****************声明方法（后端）******************/
//上传广告信息
function uploadAdv(req,res){
	console.log(req.body);
	let body=req.body;
	let src={img:[],video:""};
	let sql="insert into info_adv(title,src) values (?,?)";
	if(body.imgsrc0){
		src.img.push(body.imgsrc0);
		if(body.imgsrc1){src.img.push(body.imgsrc1)}
		if(body.imgsrc2){src.img.push(body.imgsrc2)}
	}
	else if(body.videosrc){src.video=body.videosrc;}
	src=JSON.stringify(src);
	mydb.query(sql,[body.title,src],(err,result)=>{  
		if(err){console.log("在插入数据到数据库时发生了错误："+err);return;}
		else{res.send("success");}
	})
}



function testFunction(req,res){
	console.log("testFunction……")
}



/****************暴露方法******************/
module.exports={
	//前端
	autoLogin,
	userRegist,
	userLogin,
	getCode,
	publishQuestion,
	getAnswers,
	publishAnswer,
	upImgtextImg,
	publishImgText,
	uploadVideo,
	publishJob,
	publishSecond,
	publishFind,
	publishFree,
	getInfo,
	publishShowComment,
	getShowComment,
	updateShowComment,
	getAuthorInfo,
	getShowAnswer,
	//后端
	uploadAdv
	
}
