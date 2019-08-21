Out = wmhs_DM10(Mask_WMH,Mask_WM,Dmap_Vent,Dmap_Cort);

if ~isequal(size(Mask_WMH),size(Mask_WM),size(Dmap_Vent),size(Dmap_Cort))
    disp('Dimension of inputs must match.');
    Out=[];
else
    Out=Mask_WMH;
    Out(Mask_WM==0)=0;
    Out(Dmap_Vent>0 & Dmap_Vent<=10)=2;
end


