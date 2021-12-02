clc
clear all
close all
I=xlsread('Credit_Risk_Analysis.xlsx');

% inputs
p1=I(:,1);       % all rows in the first column
p2=I(:,2);
p3=I(:,3);
p4=I(:,4);
p5=I(:,5);
p6=I(:,6);
p7=I(:,7);
p8=I(:,8);
p9=I(:,9);
p10=I(:,10);
p11=I(:,11);
p12=I(:,12);
p13=I(:,13);
p14=I(:,14);

% output
p15=I(:,15);

I=[p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14];     % Input data sets
I1=I';                  %input
I2=I1(:,1:2:5000);      %training input data sets
I3=I1(:,2:2:5000);      %testing input data sets

Out=[p2];
Out1=Out';
t=zscore(Out1);         %final normalised output
%mu =mean(t);           %use when testing with trainbr
%sig=std(t);
O1=t(:,1:2: 5000);      %training output
O2=t(:,2:2: 5000);      %testing output

net=newff(minmax(I1),[30,35,1],{ 'tansig', 'logsig', 'purelin'},'trainlm');
net.trainParam.show=1000;
net.trainParam.lr=1.0;
net.trainParam.mc=0.5;
net.trainParam.epochs=1000;
net.trainParam.goal=1e-9;
[net,tr]=train(net,I2,O1);
view(net);

% Test the network
y1=sim(net,I2)
y2=sim(net,I3)

% figure(1)
% plot(y1,O1,'b*')    %training data graph
% title('Graph for training data');
% figure(2)
% plot(y2,O2,'b*')    % testing data graph
% title('Graph for testing data');