#tb = Tax Brackets
#for example tb = [0, 7091, 20261, 40552, 80640];
#tr = Tax Rates 
#for example tr = [14.5, 28.5, 37, 45, 48]; 
#Income interval

function plotEffectiveTaxRate(tb, tr, colour)

  numtb = numel (tb);
  numtr = numel (tr);

  if (numtb != numtr)
    disp ("The arrays must have the same size")
    return
  endif

  clear x;
  clear y;

  if (exist("colour", "var") != 1)
    colour = "b";
  endif
  
  
  x = 1:10:(120000);

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
  y= y.*100;

  h = plot(x,y);
  
  title ("Effective Income Tax", "fontsize", 16);
  xlabel("Income", "fontsize", 14);
  ylabel("Effective Tax Rate (%)", "fontsize", 14);
  set(h, "color", colour, "linewidth", 4);
  set(gca, "linewidth", 2, "fontsize", 18);

endfunction
