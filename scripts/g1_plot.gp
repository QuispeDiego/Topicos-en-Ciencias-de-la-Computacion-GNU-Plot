set terminal pngcairo size 1200,800 enhanced font "Arial,14" background rgb "#0E1A2B"
set output "g1_curva.png"

set border lc rgb "#5A6E85"
set key textcolor rgb "#D6E1EE"
set title textcolor rgb "#38BDF8"
set xlabel textcolor rgb "#D6E1EE"
set ylabel textcolor rgb "#D6E1EE"
set tics textcolor rgb "#A9B8C9"

set title "Casos semanales de dengue en 16 distritos del Peru (2023-2025)" font "Arial,18"
set xlabel "Semana epidemiologica"
set ylabel "Casos confirmados"

set xdata time
set timefmt "%Y-%m-%d"
set format x "%b\n%Y"
set xtics 7776000

set grid ytics lc rgb "#24374F" lw 1
set yrange [0:*]

set label 1 "Pico: SE 12 de 2023\n1 559 casos" at "2023-03-19", 1559 \
    offset 1.5,1.2 textcolor rgb "#FBBF24" font "Arial,13"
set arrow 1 from "2023-03-19", 1559 to "2023-03-19", 1450 nohead lc rgb "#FBBF24" lw 2

plot "g1_curva.dat" using 1:2 with lines lw 3 lc rgb "#38BDF8" \
     title "Casos confirmados"
