Out = wmhs_BD(Mask_WMH,Mask_WM,Dmap_Vent,Dmap_Cort);

thresh=2;

if ~isequal(size(Mask_WMH),size(Mask_WM),size(Dmap_Vent),size(Dmap_Cort))
    disp('Dimension of inputs must match.');
    Out=[];
else
    Out=Mask_WMH;
    Out(Mask_WM==0)=0;
    bd=Dmap_Cort-Dmap_Vent;
    Out(Mask_WMH>0 & bd>=0)=2;
end