set terminal pngcairo size 1200,800 enhanced font "Arial,14" background rgb "#0E1A2B"
set output "g4_impacto.png"

set border lc rgb "#5A6E85"
set key textcolor rgb "#D6E1EE" top right box lc rgb "#24374F"
set title textcolor rgb "#38BDF8"
set xlabel textcolor rgb "#D6E1EE"
set ylabel textcolor rgb "#D6E1EE"
set tics textcolor rgb "#A9B8C9"

set title "Casos esperados sin intervencion frente a casos observados (2025)" font "Arial,18"
set ylabel "Casos de dengue"
set xlabel "Departamento"

set style data histogram
set style histogram clustered gap 1
set style fill solid 0.9 border rgb "#0E1A2B"
set boxwidth 0.85
set grid ytics lc rgb "#24374F" lw 1
set yrange [0:5000]
set xtics nomirror

plot "g4_impacto.dat" using 2:xtic(1) lc rgb "#FBBF24" \
        title "Esperados sin intervencion", \
     "" using 3 lc rgb "#38BDF8" title "Observados con intervencion"
