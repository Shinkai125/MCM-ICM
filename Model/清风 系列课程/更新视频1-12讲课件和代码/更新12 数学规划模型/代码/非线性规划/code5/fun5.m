function f = fun5(xx)  % 注意为了避免和下面的x同号，我们把决策变量的向量符号用xx表示（注意xx的长度为16）
    a=[1.25  8.75  0.5  5.75  3  7.25];  % 工地的横坐标
    b=[1.25  0.75  4.75	5  6.5  7.25];   % 工地的纵坐标
    x = [xx(13)  xx(15)];  % 新料场的横坐标
    y = [xx(14)  xx(16)];  % 新料场的纵坐标
    c = [];  % 初始化用来保存工地和料场距离的向量 (这个向量就是我们的系数向量）
    for  j =1:2
        for i = 1:6
            c = [c;  sqrt( (a(i)-x(j))^2 + (b(i)-y(j))^2)];  % 每循环一次就在c的末尾插入新的元素
        end
    end
    % 下面我们要求吨千米数，注意c是列向量，我们计算非线性规划时给定的初始值x0是行向量
    f = xx(1:12) * c;
end




% % 注意：代码文件仅供参考，一定不要直接用于自己的数模论文中
% % 国赛对于论文的查重要求非常严格，代码雷同也算作抄袭
% % 视频中提到的附件可在售后群（购买后收到的那个有道云笔记中有加入方式）的群文件中下载。包括讲义、代码、优秀的作业、我视频中推荐的资料等。
% % 关注我的微信公众号《数学建模学习交流》，后台发送“软件”两个字，可获得常见的建模软件下载方法；发送“数据”两个字，可获得建模数据的获取方法；发送“画图”两个字，可获得数学建模中常见的画图方法。另外，也可以看看公众号的历史文章，里面发布的都是对大家有帮助的技巧。
% % 购买更多优质精选的数学建模资料，可关注我的微信公众号《数学建模学习交流》，在后台发送“买”这个字即可进入店铺(我的微店地址：https://weidian.com/?userid=1372657210)进行购买。
% % 视频价格不贵，但价值很高。单人购买观看只需要58元，三人购买人均仅需46元，视频本身也是下载到本地观看的，所以请大家不要侵犯知识产权，对视频或者资料进行二次销售。
% % 如何修改代码避免查重的方法：https://www.bilibili.com/video/av59423231（必看）