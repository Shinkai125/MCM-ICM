%-------��������ջ���-------%
clc;
clear all;
close all;
%----------���ò���----------%
T = 1000;         %��ʼ�¶ȣ������ߣ�
T_min = 1;     %����¶�
a = 0.9;         %����ϵ��
n = 0;           %��������
lb = 0;          %�½�
ub = 10;         %�Ͻ�
X = lb + rand * (ub - lb);          %���Ͻ硢�½�֮�����������ʼ��

%----------��ʼ����----------%
while T > T_min
        %���ȡ�½�
        X1 = lb + rand * (ub - lb);

        %���㺯��ֵ��ֵ
        EX = fitness(X1) - fitness(X);

        if EX < 0
            break
        elseif rand < exp(-EX /  T)
            break
      
    end
    
    %���½�
    X = X1;
    
    %��X�洢����ʷ��¼
    n = n + 1;              %������������
    S(n, :) = X;              %�洢��ǰ·��
    History_FX(n, :) = func(X);    %�洢��ǰ·���ĳ���
    %����
    T = T * a;
end
fprintf('ģ���˻��㷨��\n')
fprintf('****************�������****************\n')
fprintf('��Сֵ��Ϊ�� %f\n', X)
fprintf('��С����ֵΪ�� %f\n', func(X))
fprintf('****************************************\n')
fprintf('end\n')