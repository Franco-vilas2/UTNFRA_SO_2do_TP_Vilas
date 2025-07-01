echo $SHELL
source ~/.bashrc
history -a
git clone https://github.com/Franco-vilas2/UTNFRA_SO_2do_TP_Vilas.git
cd UTNFRA_SO_2do_TP_Vilas
cp -r ~/UTN-FRA_SO_Examenes/202406 .
cp -r ~/RTA_Examen_$(date +%Y%m%d) .
ls -la
history -a
