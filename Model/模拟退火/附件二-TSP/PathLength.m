%����PathLength���������·������
function len=PathLength(D,Chrom)
%%������������·�߳���
%���룺
%D ��������֮��ľ���
%Chrom ����Ĺ켣
[row,col]=size(D);    %�õ�����D���������������ֱ���ڱ���row��col��
MIND=size(Chrom,1);     %������chrom��������������MIND
len=zeros(MIND,1);
for i=1:MIND
    p=[Chrom(i,:) Chrom(i,1)];
    i1=p(1:end-1);
    i2=p(2:end);
    len(i,1)=sum(D((i1-1)*col+i2));%������֮��ľ���
end