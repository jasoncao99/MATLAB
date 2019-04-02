function y = trapz(fun,a,b,n)
  
if n<0 
  error('n can not be negative')
end
h = (b-a)/n;
s = 0;
while (a < b)
  s = s + ((h/2) * (fun(a) + fun(a+h)));
  a = a + h;
end
s

endfunction