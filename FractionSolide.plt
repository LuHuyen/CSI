reset
set autoscale
set encoding utf8

unset log
unset label
unset key

set xrange [0.01:1]
set yrange [0.56:0.64]

set border linewidth 2
set title ""

set grid
set xlabel "$\\mu$"
set ylabel "$\\Phi$" 

set term epslatex color colortext
set output './fractonSolide.tex'

plot "packing.txt" using 1:2 smooth csplines with lines lw 2, \
     "packing.txt" using 1:3 smooth csplines with lines lw 2


unset output

set term wxt enhanced
replot

