A = [3,-2,-1;-2,4,-2;-1,-2,4];
b = [-4; 0; 7];
aug = [A b];

for i = 1:size(A, 1) - 1
   
    for j = i + 1:size(A, 1)
        mul = aug(j, i) / aug(i, i);
        aug(j,:) = aug(j,:) - aug(i, :).*mul;
    end
end

for i = size(A, 1):-1:2
    
    for j = i - 1:-1:1
        mul = aug(j, i) / aug(i, i);
        aug(j,:) = aug(j,:) - aug(i, :).*mul;
    end
end

x = aug(:,size(A,2)+1)./diag(aug);