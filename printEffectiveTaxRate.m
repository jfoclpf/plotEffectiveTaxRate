#tb = Tax Brackets
#for example tb = [0, 7091, 20261, 40552, 80640];
#tr = Tax Rates 
#for example tr = [14.5, 28.5, 37, 45, 48]; 
#Income interval

function printEffectiveTaxRate(tb, tr)

  numtb = numel (tb);
  numtr = numel (tr);

  if (numtb != numtr)
    disp ("The arrays must have the same size")
    return
  endif

  clear x;
  clear y;

  x = 0:1000:100000;

  for i=1:numtr
    tr(i)=tr(i).* 0.01;
  endfor

  #auxiliary array, something like the maginal tax
  k(1)=tr(1)*tb(2);
  for i=2:(numtb-1)
    k(i)= k(i-1) + tr(i)* (tb(i+1)-tb(i)); 
  endfor

  y = ( tr(1) ) .* (x>=tb(1)) .* (x<tb(2)); 

  for i=2:(numtr-1)
    y = y + ( (( k(i-1) + tr(i)*(x-tb(i)) )./x) .* (x>=tb(i)) .* (x<tb(i+1)));
  endfor

  i=numtr;
  y = y + ( (( k(i-1) + tr(i)*(x-tb(i)) )./x) .* (x>=tb(i)));

  plot(x,y)

endfunction

