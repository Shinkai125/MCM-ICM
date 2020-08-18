%% 注意：以下代码需要较新版本的matlab才能运行（最好是2016版本及以上哦）
% 如果运行出错请下载新版的matlab代码再运行

%% Matlab作无向图
% （1）无权重（每条边的权重默认为1）
% 函数graph(s,t)：可在 s 和 t 中的对应节点之间创建边，并生成一个图
% s 和 t 都必须具有相同的元素数；这些节点必须都是从1开始的正整数，或都是字符串元胞数组。
s1 = [1,2,3,4];
t1 = [2,3,1,1];
G1 = graph(s1, t1);
plot(G1)
% 注意哦，编号最好是从1开始连续编号，不要自己随便定义编号
s1 = [1,2,3,4];
t1 = [2,3,1,1];
G1 = graph(s1, t1);
plot(G1)

% 注意字符串元胞数组是用大括号包起来的哦
s2 = {'学校','电影院','网吧','酒店'};
t2 = {'电影院','酒店','酒店','KTV'};
G2 = graph(s2, t2);
plot(G2, 'linewidth', 2)  % 设置线的宽度
% 下面的命令是在画图后不显示坐标
set( gca, 'XTick', [], 'YTick', [] );  

% （2）有权重
% 函数graph(s,t,w)：可在 s 和 t 中的对应节点之间以w的权重创建边，并生成一个图
s = [1,2,3,4];
t = [2,3,1,1];
w = [3,8,9,2];
G = graph(s, t, w);
plot(G, 'EdgeLabel', G.Edges.Weight, 'linewidth', 2) 
set( gca, 'XTick', [], 'YTick', [] );  

%% Matlab作有向图
% 无权图 digraph(s,t)
s = [1,2,3,4,1];
t = [2,3,1,1,4];
G = digraph(s, t);
plot(G)
set( gca, 'XTick', [], 'YTick', [] );  

% 有权图 digraph(s,t,w)
s = [1,2,3,4];
t = [2,3,1,1];
w = [3,8,9,2];
G = digraph(s, t, w);
plot(G, 'EdgeLabel', G.Edges.Weight, 'linewidth', 2) 
set( gca, 'XTick', [], 'YTick', [] );  

% % 注意：代码文件仅供参考，一定不要直接用于自己的数模论文中
% % 国赛对于论文的查重要求非常严格，代码雷同也算作抄袭
% % 视频中提到的附件可在售后群（购买后收到的那个有道云笔记中有加入方式）的群文件中下载。包括讲义、代码、优秀的作业、我视频中推荐的资料等。
% % 关注我的微信公众号《数学建模学习交流》，后台发送“软件”两个字，可获得常见的建模软件下载方法；发送“数据”两个字，可获得建模数据的获取方法；发送“画图”两个字，可获得数学建模中常见的画图方法。另外，也可以看看公众号的历史文章，里面发布的都是对大家有帮助的技巧。
% % 购买更多优质精选的数学建模资料，可关注我的微信公众号《数学建模学习交流》，在后台发送“买”这个字即可进入店铺(我的微店地址：https://weidian.com/?userid=1372657210)进行购买。
% % 视频价格不贵，但价值很高。单人购买观看只需要58元，三人购买人均仅需46元，视频本身也是下载到本地观看的，所以请大家不要侵犯知识产权，对视频或者资料进行二次销售。
% % 如何修改代码避免查重的方法：https://www.bilibili.com/video/av59423231（必看）