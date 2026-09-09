set terminal pngcairo size 1200,800 enhanced font "Arial,14" background rgb "#0E1A2B"
set output "g3_real_vs_predicho.png"

set border lc rgb "#5A6E85"
set key textcolor rgb "#D6E1EE" top right box lc rgb "#24374F"
set title textcolor rgb "#38BDF8"
set xlabel textcolor rgb "#D6E1EE"
set ylabel textcolor rgb "#D6E1EE"
set tics textcolor rgb "#A9B8C9"

set title "El modelo sigue la curva real: validacion 2023-2024 (R2 = 0,94)" font "Arial,18"
set xlabel "Semana epidemiologica"
set ylabel "Casos por semana"

set xdata time
set timefmt "%Y-%m-%d"
set format x "%b\n%Y"
set xtics 5184000
set grid ytics lc rgb "#24374F" lw 1
set yrange [0:*]

plot "g3_real_vs_predicho.dat" using 1:2 with lines lw 3 lc rgb "#38BDF8" \
        title "Casos reales", \
     "" using 1:3 with lines lw 2.5 dt 2 lc rgb "#FBBF24" \
        title "Casos predichos por el modelo"
