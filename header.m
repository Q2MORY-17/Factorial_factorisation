%Excel Table
T = xlsread('<enter data/table excel path - size[dbl 21*18]>');

%general variables
Ap=T(17,3);           
Am=T(18,3);          
Bp=T(17,4);          
Bm=T(18,4);         
Cp=T(17,5);            
Cm=T(18,5);           
Dp=T(17,6);           
Dm=T(18,6);           
Ep=T(17,7);         
Em=T(18,7);            

%Huvudeffectgraf variable
A=[Am Ap];
B=[Bm Bp];
C=[Cm Cp];
D=[Dm Dp];
E=[Em Ep];

%Samspelsgraf variable
AmCm=(Am+Cm)/2; %change variables to the larger "samspel"
AmCp=(Am+Cp)/2;
ApCm=(Ap+Cm)/2;
ApCp=(Ap+Cp)/2;

%Effect vector -> Pareto_Chart
Effect= T(21,3:17);           
%Effectnames= {'A','B','C','D','E','AB','AC','AD','AE','BC','BD','BE',...
   % 'CD','CE','DE'};

%Normal graph variables
CleanEffect=sort(Effect);

