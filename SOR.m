function x = SOR(A,b,x0,w,tol,max_it)
  [n,m] = size(A);
  x = x0;
  C = -A;
  for i=1:n
    C(i,i) = 0;
  end
  for i=1:n
    C(i,i:n) = C(i,i:n)/A(i,i);
  end
  for i=1:n
    r(i,1) = b(i)/A(i,i);
  end
  i = 1;
  while ( i < max_it)
    xold = x;
    for j = 1:n
      x(j) = (1-w)*xold(j) + w*(C(j,:) * x + r(j));
    end
    if norm(xold-x) <= tol
      disp('SOR method converged')
      return;
    end
    disp([i   x'])
    i = i + 1;
  end
  
endfunction
