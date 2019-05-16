/*********************************************************/
/*************************引入模块*************************/
/*********************************************************/
global.express = require('express');
global.bodyParser = require('body-parser');
global.mysql = require('mysql');
global.cors = require('cors');
global.multer=require("multer");
global.app = express();
app.use(cors())

//默认的传输内容或上传内容的大小是100kb
app.use(bodyParser.json({limit:'50mb'}));
app.use(bodyParser.urlencoded({limit:'50mb',extended:true}));  

let cookieParser = require('cookie-parser');
let session = require('express-session');


let handle=require("./handle.js");

/*********************************************************/
/*************************基本设置*************************/
/*********************************************************/
//设置只允许http://localhost:8080跨域访问
let corsDns  = {
  origin: 'http://localhost:8080',
  optionsSuccessStatus: 200
}
//开启cookie
let secret = 'moc.01815h.www';
app.use(cookieParser(secret));
// 开启session
app.use(session({
    secret: secret,
    name:'sessid1810',
    resave: false,
    saveUninitialized: true,
    cookie: {maxAge:24*3600000}
}))
//接受post过来的数据
app.use(bodyParser.urlencoded({ extended: true }));   //接收form-data
app.use(bodyParser.json());  //接收json格式的数据
//建立数据库连接
global.mydb = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123',
    port: 3306,
    database: 'aishangxue',
	multipleStatements: true
});
mydb.connect();
//静态资源托管
app.use(express.static(__dirname+'/static'));
//设置监听端口
app.listen(81, () => {
    console.log('服务器在端口号81监听中...');
})

/*********************************************************/
/*************************前端请求*************************/
/*********************************************************/
//自动登录
app.post("/autoLogin",(req,res)=>{
	handle.autoLogin(req,res);
})
//用户注册
app.post('/userRegist',cors(corsDns),(req,res)=>{
	handle.userRegist(req,res);
})
//用户登录
app.post('/userLogin',cors(corsDns),(req,res)=>{
	handle.userLogin(req,res);
})
//用户登录时动态获取验证码
app.get('/getcode',(req,res)=>{
	handle.getCode(req,res)
})
//用户发布问题
app.get('/publishQuestion',(req,res)=>{
	handle.publishQuestion(req,res)
})
//请求用户提的问题
app.post("/getAnswers",(req,res)=>{
	handle.getAnswers(req,res);
})
//发布回答
app.get("/publishAnswer",(req,res)=>{
	handle.publishAnswer(req,res);
})
//上传wangeditor中的图片
let imgtextStorage = multer.diskStorage({
  destination: function (req, file, cb) {cb(null, './static/imgtextimg/')},
  filename: function (req, file, cb) {cb(null,Date.now()+"."+file.originalname.split(".")[1])}
})
app.post("/upImgtextImg",multer({ storage: imgtextStorage }).single('wangeditor_pic'),(req,res)=>{
	handle.upImgtextImg(req,res);
})
//发布图文
app.post("/publishImgText",(req,res)=>{
	handle.publishImgText(req,res);
})
//发布视频
let videoStorage = multer.diskStorage({
  destination: function (req, file, cb) {cb(null, './static/video/')},
  filename: function (req, file, cb) {cb(null,Date.now()+"."+file.originalname.split(".")[1])}
})
app.post("/uploadVideo",multer({ storage: videoStorage }).single('video'),(req,res)=>{
	handle.uploadVideo(req,res);
})
//发布兼职、全职信息
let jobStorage = multer.diskStorage({
  destination: function (req, file, cb) {cb(null, './static/jobimg/')},
  filename: function (req, file, cb) {cb(null,Date.now()+"."+file.originalname.split(".")[1])}
})
app.post("/publishJob",multer({ storage: jobStorage }).single('jobimg'),(req,res)=>{
	handle.publishJob(req,res);
})
//发布二手转卖信息
let secondStorage = multer.diskStorage({
  destination: function (req, file, cb) {cb(null, './static/secondimg/')},
  filename: function (req, file, cb) {cb(null,Date.now()+"."+file.originalname.split(".")[1])}
})
app.post("/publishSecond",multer({ storage: secondStorage }).single('secondimg'),(req,res)=>{
	handle.publishSecond(req,res);
})
//发布寻_启事信息
let findStorage = multer.diskStorage({
  destination: function (req, file, cb) {cb(null, './static/findimg/')},
  filename: function (req, file, cb) {cb(null,Date.now()+"."+file.originalname.split(".")[1])}
})
app.post("/publishFind",multer({ storage: findStorage }).single('findimg'),(req,res)=>{
	handle.publishFind(req,res);
})
//发布自定义信息
let freeStorage = multer.diskStorage({
  destination: function (req, file, cb) {cb(null, './static/freeimg/')},
  filename: function (req, file, cb) {cb(null,Date.now()+"."+file.originalname.split(".")[1])}
})
app.post("/publishFree",multer({ storage: freeStorage }).single('freeimg'),(req,res)=>{
	handle.publishFree(req,res);
})
//获取11类混合数据或其中的一种，包含：["常识","生活","城乡","行业","创意","科技","军事","财经","人生","休闲","问答"]
app.get('/getInfo',(req,res)=>{
	handle.getInfo(req,res);
})
//发布show页面的评论
app.get('/publishShowComment',(req,res)=>{
	handle.publishShowComment(req,res);
})
//获取show页面的评论
app.get('/getShowComment',(req,res)=>{
	handle.getShowComment(req,res);
})
//更新show页面的评论
app.get('/updateShowComment',(req,res)=>{
	handle.updateShowComment(req,res);
})
//获取当前作者信息
app.get('/getAuthorInfo',(req,res)=>{
	handle.getAuthorInfo(req,res);
})
//获取show页面当前问题的回答数据
app.get('/getShowAnswer',(req,res)=>{
	handle.getShowAnswer(req,res);
})



app.post("/testPath",(req,res)=>{
	handle.testPath(req,res);
})


/*********************************************************/
/*************************后端请求*************************/
/*********************************************************/
app.get('/',(req,res)=>{
	res.send("管理员登录！")
})
//上传广告信息
app.post('/uploadAdv',(req,res)=>{
	handle.uploadAdv(req,res);
})






