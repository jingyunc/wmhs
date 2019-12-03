function Out = wmhs_BD(Mask_WMH,Mask_WM,Dmap_Vent,Dmap_Cort)

if ~isequal(size(Mask_WMH),size(Mask_WM),size(Dmap_Vent),size(Dmap_Cort))
    disp('Dimension of inputs must match.');
    Out=[];
else
    Mask_WMH(Mask_WMH>0)=1;
    Out=Mask_WMH;
    Out(Mask_WM==0)=0;
    bd=Dmap_Cort-Dmap_Vent;
    Out(bd>=0 & Mask_WMH==1)=2;
end