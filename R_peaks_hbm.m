[filename,pathname]=uigetfile('*.*','Select'); %selecting the input file

filewithpath=strcat(pathname,filename);
fs=360;
ecg=load(filename);
ecgsig=(ecg.val)./200;
t=1:length(ecgsig);
tx=t./fs;
wt=modwt(ecgsig,4,'sym4'); %sym4
 
wtrec=zeros(size(wt));

wtrec(3:4,:)=wt(3:4,:);
y=imodwt(wtrec,'sym4');
y=abs(y).^2;
avg=mean(y);
%average of y^2 as threshold
[Rpeaks,locs]=findpeaks(y,t,'MinPeakHeight',8*avg,'MinPeakDistance',50);
nohb=length(locs); %no.heart beats

timelimit=length(ecgsig)/fs;
hbpermin=(nohb*60)/timelimit; 
disp(strcat('Heart Rate =',num2str(hbpermin)))
%Visualing ECG signal and detecting R peaks
subplot(211)
plot(tx,ecgsig);
xlim([0,timelimit]);
grid on;
xlabel('Seconds');
title('ECG signal');
subplot(212)
plot(t,y)
grid on;
xlim([0,length(ecgsig)]);
hold on;
plot(locs,Rpeaks,'ro');
xlabel('samples');
title(strcat('R peaks found and heart Rate: ',num2str(hbpermin)));
