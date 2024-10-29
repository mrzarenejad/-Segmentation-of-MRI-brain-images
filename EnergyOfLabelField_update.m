function [E]=EnergyOfLabelField_update(segmentation,potential,m,n,class_number)
segmentation=reshape(segmentation,m,n);
[width, height]=size(segmentation);
n1=width* height;
E=zeros(n1,class_number);
        m1=1;
for i=1:size(segmentation,1)-2
    for j=1:size(segmentation,2)-2
        patch=segmentation(i:i+2,j:j+2);

for k=1:class_number
 vector_patch=reshape(patch,1,9);
 %patch(2,2)=k;
 [~,y]=find( vector_patch~=k);
 pair_N=length(y);
    E(m1,k)=potential*pair_N;
end
m1=m1+1;
    end
end
end

