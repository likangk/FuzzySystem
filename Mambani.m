clear all;
fisMat = newfis('M5_3');
fisMat = addvar(fisMat,'input','服务',[0 10]);
fisMat = addvar(fisMat,'output','小费',[0 30]);
fisMat = addmf(fisMat,'input',1,'差','gaussmf',[1.8 0]);
fisMat = addmf(fisMat,'input',1,'好','gaussmf',[1.8 5]);
fisMat = addmf(fisMat,'input',1,'很好','gaussmf',[1.8 10]);
%trapmf梯形隶属度函数,参数b c点取最大值1，a d 点为0
fisMat = addmf(fisMat,'output',1,'低','trapmf',[0 0 5 15]);
%trimf三角形隶属度函数参数b点取最大值1，a c 点为0；
fisMat = addmf(fisMat,'output',1,'中等','trimf',[5 15 25]);
fisMat = addmf(fisMat,'output',1,'高','trapmf',[15 25 30 30]);
rulelist = [1 1 1 1;2 2 1 1;3 3 1 1];
fisMat = addrule(fisMat,rulelist);
subplot(3,1,1);plotmf(fisMat,'input',1);
xlabel('服务');ylabel('输入隶属度');title('vb');
subplot(3,1,2);plotmf(fisMat,'output',1);
xlabel('小费');ylabel('输出隶属度');
subplot(3,1,3);gensurf(fisMat);
xlabel('服务');ylabel('小费');
