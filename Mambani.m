clear all;
fisMat = newfis('M5_3');
fisMat = addvar(fisMat,'input','����',[0 10]);
fisMat = addvar(fisMat,'output','С��',[0 30]);
fisMat = addmf(fisMat,'input',1,'��','gaussmf',[1.8 0]);
fisMat = addmf(fisMat,'input',1,'��','gaussmf',[1.8 5]);
fisMat = addmf(fisMat,'input',1,'�ܺ�','gaussmf',[1.8 10]);
%trapmf���������Ⱥ���,����b c��ȡ���ֵ1��a d ��Ϊ0
fisMat = addmf(fisMat,'output',1,'��','trapmf',[0 0 5 15]);
%trimf�����������Ⱥ�������b��ȡ���ֵ1��a c ��Ϊ0��
fisMat = addmf(fisMat,'output',1,'�е�','trimf',[5 15 25]);
fisMat = addmf(fisMat,'output',1,'��','trapmf',[15 25 30 30]);
rulelist = [1 1 1 1;2 2 1 1;3 3 1 1];
fisMat = addrule(fisMat,rulelist);
subplot(3,1,1);plotmf(fisMat,'input',1);
xlabel('����');ylabel('����������');title('vb');
subplot(3,1,2);plotmf(fisMat,'output',1);
xlabel('С��');ylabel('���������');
subplot(3,1,3);gensurf(fisMat);
xlabel('����');ylabel('С��');
