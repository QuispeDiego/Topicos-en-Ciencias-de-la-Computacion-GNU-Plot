set terminal pngcairo size 1250,850 enhanced font "Arial,13" background rgb "#0E1A2B"
set output "g5_superficie.png"

set border lc rgb "#5A6E85"
set title textcolor rgb "#38BDF8"
set xlabel textcolor rgb "#D6E1EE"
set ylabel textcolor rgb "#D6E1EE"
set zlabel textcolor rgb "#D6E1EE"
set tics textcolor rgb "#A9B8C9"
unset key

set title "El riesgo no es uniforme: se concentra en distritos y semanas concretos\n(incidencia media por 100 000 habitantes, 2023-2025)" font "Arial,16"
set ylabel "Semana epidemiologica" rotate parallel offset 0,-1
set zlabel "Incidencia por 100 000 hab." rotate parallel offset -2,0

set xtics ("Comas" 1, "Villa El Salvador" 2, "San Juan de Lurigancho" 3, \
           "Trujillo" 4, "La Esperanza" 5, "Chiclayo" 6, "El Porvenir" 7, \
           "Jose Leonardo Ortiz" 8, "Castilla" 9, "Iquitos" 10, "Sullana" 11, \
           "Piura" 12, "Catacaos" 13, "Calleria" 14, "Yarinacocha" 15, \
           "Belen" 16) rotate by 50 right font "Arial,10"

set pm3d
set hidden3d
set palette defined (0 "#0B3D63", 0.35 "#1C7293", 0.65 "#38BDF8", 1 "#FBBF24")
set view 58, 300
set ticslevel 0
set ytics 8
set cblabel "Incidencia" textcolor rgb "#D6E1EE"

splot "g5_superficie.dat" using 1:2:3 with pm3d
