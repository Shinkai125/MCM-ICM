function S2 = NewAnswer2(S1)
N = length(S1);
a = round(rand(1,2)*(N-1) + 1); %rand(1,2)����1��2��0��1ֱ�ӵ������
S_left = S1(1:min(a)-1);
S_mid = fliplr(S1(min(a):max(a))); %���ҷ�ת�м�ľ���(����ѡ�е����������к�����֮������г���)
S_right = S1(max(a)+1:N);
S2 = [S_left,S_mid,S_right];
end