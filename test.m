A= [2 4 6; 8 7 1; 9 3 4];
b = [1;5;7];
n = 3;

x = A\b % true solution

A = [A, b]; % Augment the matrix
for j=1:n-1 % Loop through columns
  % find max abs entry below diag in this column
  [maxval,k] = max(abs(A(j:n,j)));
  k = k + j - 1;
  % swap rows k and j
  A([k,j],:) = A([j,k],:);
  % loop through rows j+1 to n zeroing out column j
  for i=j+1:n
    m = A(i,j)/A(j,j);
    A(i,j+1:n) = A(i,j+1:n) - m*A(j,j+1:n);
    A(i,j) = 0;
  end
end

 A 