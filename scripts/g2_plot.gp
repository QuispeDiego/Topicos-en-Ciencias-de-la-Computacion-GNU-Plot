set terminal pngcairo size 1200,850 enhanced font "Arial,14" background rgb "#0E1A2B"
set output "g2_superficie.png"

set border lc rgb "#5A6E85"
set title textcolor rgb "#38BDF8"
set xlabel textcolor rgb "#D6E1EE"
set ylabel textcolor rgb "#D6E1EE"
set zlabel textcolor rgb "#D6E1EE"
set tics textcolor rgb "#A9B8C9"
unset key

set title "Superficie de riesgo: el brote se dispara cuando el calor\ny la densidad del mosquito coinciden" font "Arial,17"
set xlabel "Temperatura media (C)" rotate parallel offset 0,-1
set ylabel "Indice aedico (% de viviendas con larvas)" rotate parallel offset 0,-1
set zlabel "Tasa de incidencia (casos por 100 000 hab.)" rotate parallel offset -2,0

set dgrid3d 40,40 gauss 0.8,1.5
set pm3d
set hidden3d
set palette defined (0 "#0B3D63", 0.4 "#1C7293", 0.7 "#38BDF8", 1 "#FBBF24")
set view 55, 320
set ticslevel 0
set grid lc rgb "#24374F"

splot "g2_superficie.dat" using 1:2:3 with pm3d
