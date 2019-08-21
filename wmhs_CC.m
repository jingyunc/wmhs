Out = wmhs_CC(Mask_WMH,Mask_WM,Dmap_Vent,Dmap_Cort);

thresh=2;

if ~isequal(size(Mask_WMH),size(Mask_WM),size(Dmap_Vent),size(Dmap_Cort))
    disp('Dimension of inputs must match.');
    Out=[];
else
    Out=zeros(size(Mask_WMH));
    Mask_WMH(Mask_WM==0)=0;
    L=bwlabeln(Mask_MWH,26);
    for j=1:length(unique(L))
        if (min(Dmap_Vent(L==j))<=thresh)
            Out(L==j)=2;
        else
            Out(L==j)=1;
        end
    end
end