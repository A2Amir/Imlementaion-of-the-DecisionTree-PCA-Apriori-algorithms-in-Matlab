clc;
clear;
close all;

%% Load Data

load fisheriris;
X=meas;         % Inputs
Y=species;      % Targets

%% KNN Classifier

t=ClassificationTree.fit(X,Y);

disp('Resub. Loss =');
disp(resubLoss(t));

%% Cross-validation

cvmodel=crossval(t);

disp('k-Fold Loss =');
disp(kfoldLoss(cvmodel));

%% xnew predict
X(10,:)
xnew=[5 3 1 .2];
t.predict(xnew)
