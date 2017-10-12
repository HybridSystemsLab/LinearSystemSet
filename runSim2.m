% This function simulates set behavior according to Example 3.5
clear all
figure(1), clf
% Initial condition set Xo
% J for simulation
J=8;
% N: grading space
N=1000;
Xo=linspace(0,5,N);
% for j=0
X = Xo;
% Xj+1=G(Xj)
for j=1:J
    X_plus=2*j*Xo;
    X = vertcat(X,X_plus);
end
% stem(X); grid on
for i=1:J
plot(X(i,:)*0+i-1,X(i,:),'x'); grid on;  hold on;  % added "-1" to start at zero
end
%title('Example 3.5: Set Evolution for J=8');
ylabel('X');xlabel('J')
axis([0 7 0 71])
print -depsc -tiff -r300 AlphaXSim2