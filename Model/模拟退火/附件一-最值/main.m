%%��ջ���
clear all
clc
%%
% �滭����ͼ
x = 0:0.01:10;
y = x+5*sin(5*x)+2*cos(4*x);
figure
plot(x,y,'linewidth',1.5)
ylim([-10,20])
xlabel('x')
ylabel('y')
title('y=x+5*sin(5*x)+2*cos(4*x)')
hold on

%%
% ��ǳ����ֵ��
[maxVal,maxIndex] = max(y);
plot(x(maxIndex), maxVal, 'r*','linewidth',2)
text(x(maxIndex), maxVal, {['    X: ' num2str(x(maxIndex))];['    Y: ' num2str(maxVal)]})
hold on

%%
% ��ǳ���Сֵ��
[minVal,minIndex] = min(y);
plot(x(minIndex), minVal, 'ks','linewidth',2)
text(x(minIndex), minVal, {['    X: ' num2str(x(minIndex))];['    Y: ' num2str(minVal)]})