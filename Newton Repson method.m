clc
clear
a=input('Enter the value of a:');
for k=1:1:5
  t(k)=k;
  x1(k)=a;
  f1(k)=x1(k)^3-6*x1(k)+4;
  f2(k)=3*x1(k)^2-6;
  x2(k)=x1(k)-(f1(k)/f2(k));
  f3(k)=x2(k)^3-6*x2(k)+4;
  a=x2(k);
  if k>1
     l(k)=((x2(k)-x2(k-1))/x2(k))*100;
     m(k)=abs(l(k));
      if m(k)<=0.001
      break;
      end
 end
end
result=[t' x1' f1' f2' x2' f3' m'];
disp('Iteration x0 f1 f2 x1 f3 error ')
disp(result)
root=x2(k);