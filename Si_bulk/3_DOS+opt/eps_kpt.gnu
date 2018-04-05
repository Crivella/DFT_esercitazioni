#!/usr/bin/gnuplot

set term wxt enhanced

plot \
	'kpt_5_0.1_epsTOT.dat'  u 1:2 w l lw 2              lc rgb "black" title "kpt5" , \
	'kpt_10_0.1_epsTOT.dat' u 1:2 w l lw 2 dt(10,5)     lc rgb "red"   title "kpt10", \
	'kpt_15_0.1_epsTOT.dat' u 1:2 w l lw 2 dt(20,5)     lc rgb "blue"  title "kpt15", \
	'kpt_20_0.1_epsTOT.dat' u 1:2 w l lw 2 dt(15,5,5,5) lc rgb "green" title "kpt20", \

pause -1
set term pdfcairo enhanced
set output "eps_kpt_convergence.pdf"
replot
