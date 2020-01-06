clear all;
A=[1 0.8 0.6 0.4 0.2]';
B=[0.2 0.4 0.6 0.8 1];
Aa=(A.*A)';
%求模糊蕴含关系Rc
Rc=zeros(size(A,1),size(B,2));
for i=1:size(A,1)
    for j=1:size(B,2)
        Rc(i,j)=min(A(i,:),B(:,j)');
    end
end
Bb=zeros(size(Aa,1),size(Rc,2));
for i=1:size(Aa,1)
    for j=1:size(Rc,2)
        Bb(i,j)=max(min(Aa(i,:),Rc(:,j)'));
    end
end
Bb