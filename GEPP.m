n = 3;
A = [4 9 6; 7 2 3; 3 2 1]; % nxn
b = [1;5;7]; % nx1

x = A\b % true solution

a = [A, b]; % augmentated matrix

% i is used to determine the pivot
% loops from 1 to n-1 because you exclude 
% the first row but need it's value for a pivot (notice j = i+1)
for i=1:n-1 
  
  [maxval,k] = max(abs(a(i:n,i)));
  k = k + i - 1;
  a([i k],:) = a([k i],:)
  
  % j represents the rows
  % loops from i+1 to n because i is the diagonal value aka pivot
  
  for j=i+1:n
    m = a(j,i)/a(i,i); % m(j,i) = a(j,i)/a(i,i) 
    a(j,:) = a(j,:) - m * a(i,:);
  end

end

%show augmentated matrix after GEPP
a