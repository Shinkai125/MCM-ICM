%% 最大最小化模型  :   min{max[f1,f2,···,fm]}
x0 = [6, 6];      % 给定初始值
lb = [3, 4];  % 决策变量的下界
ub = [8, 10];  % 决策变量的上界
[x,feval] = fminimax(@Fun,x0,[],[],[],[],lb,ub)
max(feval)
% x =
%     8.0000    8.5000
% feval =
%    13.5000    5.5000    5.5000   12.5000    8.5000    8.5000    5.5000   13.5000    9.5000    0.5000
% 结论：
% 在坐标为(8,8.5)处建立供应中心可以使该点到各需求点的最大距离最小，最小的最大距离为13.5单位。







% % 注意：代码文件仅供参考，一定不要直接用于自己的数模论文中
% % 国赛对于论文的查重要求非常严格，代码雷同也算作抄袭
% % 视频中提到的附件可在售后群（购买后收到的那个有道云笔记中有加入方式）的群文件中下载。包括讲义、代码、优秀的作业、我视频中推荐的资料等。
% % 关注我的微信公众号《数学建模学习交流》，后台发送“软件”两个字，可获得常见的建模软件下载方法；发送“数据”两个字，可获得建模数据的获取方法；发送“画图”两个字，可获得数学建模中常见的画图方法。另外，也可以看看公众号的历史文章，里面发布的都是对大家有帮助的技巧。
% % 购买更多优质精选的数学建模资料，可关注我的微信公众号《数学建模学习交流》，在后台发送“买”这个字即可进入店铺(我的微店地址：https://weidian.com/?userid=1372657210)进行购买。
% % 视频价格不贵，但价值很高。单人购买观看只需要58元，三人购买人均仅需46元，视频本身也是下载到本地观看的，所以请大家不要侵犯知识产权，对视频或者资料进行二次销售。
% % 如何修改代码避免查重的方法：https://www.bilibili.com/video/av59423231（必看）