clear;clc
year = 1790:10:2000;
population = [3.9,5.3,7.2,9.6,12.9,17.1,23.2,31.4,38.6,50.2,62.9,76.0,92.0,106.5,123.2,131.7,150.7,179.3,204.0,226.5,251.4,281.4];
plot(year,population,'o')
cftool  % 拟合工具箱
% (1) X data 选择 year
% (2) Y data 选择 population
% (3) 拟合方式选择：Custom Equation (自定义方程)
% (4) 修改下方的方框为：x = f(t) = xm/(1+(xm/3.9-1)*exp(-r*(t-1790)))
% (5) 左边的result一栏最上面显示：Fit computation did not converge:即没有找到收敛解，右边的拟合图形也表明拟合结果不理想
% (6) 点击Fit Options，修改非线性最小二乘估计法拟合的初始值(StartPoint), r修改为0.02，xm修改为500
% (7) 此时左边的result一览得到了拟合结果：r = 0.02735, xm = 342.4
% (8) 依次点击拟合工具箱的菜单栏最左边的文件—Generate Code(导出代码到时候可以放在你的论文附录)，可以得到一个未命名的脚本文件
% (9) 在这个打开的脚本中按快捷键Ctrl+S，将这个文件保存到当前文件夹。
% (10) 在现在这个文件中调用这个函数得到参数的拟合值和预测的效果
[fitresult, gof] = createFit(year, population)
t = 2001:2030;
xm = 342.4;   
r =  0.02735;
predictions = xm./(1+(xm./3.9-1).*exp(-r.*(t-1790)));  % 计算预测值（注意这里要写成点乘和点除,这样可以保证按照对应元素进行计算）
figure(2)
plot(year,population,'o',t,predictions,'.')  % 绘制预测结果图


% % 注意：代码文件仅供参考，一定不要直接用于自己的数模论文中
% % 国赛对于论文的查重要求非常严格，代码雷同也算作抄袭
% % 视频中提到的附件可在售后群（购买后收到的那个有道云笔记中有加入方式）的群文件中下载。包括讲义、代码、优秀的作业、我视频中推荐的资料等。
% % 关注我的微信公众号《数学建模学习交流》，后台发送“软件”两个字，可获得常见的建模软件下载方法；发送“数据”两个字，可获得建模数据的获取方法；发送“画图”两个字，可获得数学建模中常见的画图方法。另外，也可以看看公众号的历史文章，里面发布的都是对大家有帮助的技巧。
% % 购买更多优质精选的数学建模资料，可关注我的微信公众号《数学建模学习交流》，在后台发送“买”这个字即可进入店铺(我的微店地址：https://weidian.com/?userid=1372657210)进行购买。
% % 视频价格不贵，但价值很高。单人购买观看只需要58元，三人购买人均仅需46元，视频本身也是下载到本地观看的，所以请大家不要侵犯知识产权，对视频或者资料进行二次销售。
% % 如何修改代码避免查重的方法：https://www.bilibili.com/video/av59423231（必看）