sudo apt update
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
exit
git clone  https://github.com/upszot/UTN-FRA_SO_Docker.git
exit
sudo useradd -m vilas
sudo passwd vilas
su - vilas
whoami
sudo usermod -aG sudo vilas
su - vilas
su - vilas -s /bin/bash
lsblk
sudo pvcreate /dev/sdc
sudo pvcreate /dev/sdd
sudo vgcreate vg_datos /dev/sdc
sudo vgcreate vg_temp /dev/sdd
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
df -h
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
swapon --show
cd ~/RTA_Examen_20250701
mkdir ~/RTA_Examen_20250701
cd ~/RTA_Examen_20250701
nano Punto_A.sh
exit
cd ~/RTA_Examen_20250701
nano Punto_A.sh
cd ~/RTA_Examen_20250701
chmod +x Punto_A.sh
ls -l
cd ~/UTN-FRA_SO_Examenes/202406/bash_script/
cd ~
cd ~/UTN-FRA_SO_Examenes/202406/bash_script/
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd UTN-FRA_SO_Examenes/202406/bash_script/
cat Lista_Usuarios.txt
exit
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd UTN-FRA_SO_Examenes/202406/bash_script/
cat lista_usuario.txt
cat Lista_Usuarios.txt
cd ~
mkdir -p RTA_Examen_$(date +%Y%m%d)
cp /usr/local/bin/vilasAltaUser-Groups.sh ~/RTA_Examen_$(date +%Y%m%d)/
ls -l /usr/local/bin
sudo nano /usr/local/bin/vilasAltaUser-Groups.sh
sudo nano /usr/local/bin/vilasAltaUser-Groups.sh
sudo nano /usr/local/bin/vilasAltaUser-Groups.sh
cd RTA_Examen_20250701
sudo vim /usr/local/bin/LissiAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/LissiAltaUser-Groups.sh
/usr/local/bin/LissiAltaUser-Groups.sh
sudo vim /usr/local/bin/LissiAltaUser-Groups.sh
/usr/local/bin/LissiAltaUser-Groups.sh
sudo vim /usr/local/bin/LissiAltaUser-Groups.sh
sudo mv /usr/local/bin/LissiAltaUser-Groups.sh /usr/local/bin/vilasAltaUser-Groups.sh
ls /usr/local/bin | grep vilas
ls
echo "franco,grupo1,/home/franco" > Lista_Usuarios.txt
cat Lista_Usuarios.txt
sudo /usr/local/bin/vilasAltaUser-Groups.sh vagrant Lista_Usuarios.txt
sudo rm /usr/local/bin/vilasAltaUser-Groups.sh.save
ls /usr/local/bin | grep vilas
sudo vim /usr/local/bin/vilasAltaUser-Groups.sh
ls ~/RTA_Examen_$(date +%Y%m%d)/
ls /usr/local/bin/vilasAltaUser-Groups.sh
cp /usr/local/bin/vilasAltaUser-Groups.sh ~/RTA_Examen_$(date +%Y%m%d)/
ls ~/RTA_Examen_$(date +%Y%m%d)/
cp ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt ~/RTA_Examen_$(date +%Y%m%d)/
cd ~/RTA_Examen_$(date +%Y%m%d)/
ls
git init
git add .
git commit -m "punto b terminado"
git config --global user.email "francovilas24@gmail.com"
git config --global user.name "Franco-vilas2"
git commit -m "Punto B terminado"
git branch -M main
git remote add origin https://github.com/Franco-vilas2/UTNFRA_SO_2do_TP_Vilas.git
git push -u origin main
git pull origin main --rebase
git push origin main
git clone https://github.com/upszot/UTN-FRA_SO_Docker.git
cd UTN-FRA_SO_Docker/ejemplo2
vim index.html
ls
cd static-html-directory
ls
vim index.html
cd ..
pwd
vim Dockerfile
exit
cd ~/RTA_Examen_20250702/UTN-FRA_SO_Docker/ejemplo2/static-html-directory
cat index.html
cd ~/RTA_Examen_20250702/UTN-FRA_SO_Docker/ejemplo2
ls
rm dockerfile
cat Dockerfile
cat 01_make-build.sh
vim 01_make-build.sh
cat 01_make-build.sh
bash 01_make-build.sh
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
exit
docker --version
bash 01_make-build.sh
vagrant@VMPruebas:~$ docker --version
Docker version 28.3.1, build 38b7060
vagrant@VMPruebas:~$ bash 01_make-build.sh
bash: 01_make-build.sh: No such file or directory
vagrant@VMPruebas:~$
exit
docker --version
cd ~/RTA_Examen_20250702/UTN-FRA_SO_Docker/ejemplo2
ls
bash 01_make-build.sh
docker system prune -a
df -h
sudo mkdir -p /home/vagrant/docker-data
sudo mkdir -p /etc/docker
echo '{ "data-root": "/home/vagrant/docker-data" }' | sudo tee /etc/docker/daemon.json
sudo systemctl restart docker
docker info | grep "Docker Root Dir"
bash 01_make-build.sh
docker images
docker run -d -p 8080:80 web1-vilas
exit
docker run -d -p 8080:80 web1-vilas
vim index.html
locale
vim index.html
bash 01_make-build.sh
cd ~/RTA_Examen_20250702/UTN-FRA_SO_Docker/ejemplo2
bash 01_make-build.sh
docker run -d -p 8080:80 web1-vilas
docker ps
vagrant reload
exit
docker run -d -p 8080:80 web1-vilas
cd ~/RTA_Examen_20250702/UTN-FRA_SO_Docker/ejemplo2/static-html-directory
vim index.html
docker run -d -p 8080:80 web1-vilas
docker ps
docker stop <CONTAINER_ID>
docker stop ae66e698f4e2
docker run -d -p 8080:80 web1-vilas
docker login
docker tag web1-vilas francovilas23/web1-vilas:latest
docker push francovilas23/web1-vilas:latest
cd ~/RTA_Examen_20250702/UTN-FRA_SO_Docker/ejemplo2
vim run.sh
chmod +x run.sh
cat run.sh
chmod +x run.sh
bash run.sh
cd ~/RTA_Examen_20250702
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
cd UTN-FRA_SO_Ansible
ls -R
cd ejemplo_04
cd roles
ansible-galaxy init role_parcial
roles/role_parcial/
cd role_parcial
ls
cd template
cd templates
vim datos_alumno.j2
vim datos_equipo.j2
cd ../tasks
vim main.yml
cd ~/RTA_Examen_20250702/UTN-FRA_SO_Ansible/ejemplo_04/
vim punto_d.yml
cd ~/RTA_Examen_20250702/
vim Punto_D.sh
chmod +x Punto_D.sh
./Punto_D.sh
vim ~/RTA_Examen_20250702/UTN-FRA_SO_Ansible/ejemplo_04/punto_d.yml
./Punto_D.sh
vim /home/vagrant/RTA_Examen_20250702/UTN-FRA_SO_Ansible/ejemplo_04/roles/role_parcial/tasks/main.yml
vim ~/RTA_Examen_20250702/UTN-FRA_SO_Ansible/ejemplo_04/punto_d.yml
bash Punto_D.sh
vim ~/RTA_Examen_20250702/UTN-FRA_SO_Ansible/ejemplo_04/punto_d.yml
bash Punto_D.sh
vim ~/RTA_Examen_20250702/UTN-FRA_SO_Ansible/ejemplo_04/roles/role_parcial/templates/datos_alumno.j2
history -a
cd ~/repogit/UTNFRA_SO_2do_TP_Vilas
cd ~
mkdir repogit
cd ~/repogit
ls
git clone https://github.com/Franco-vilas2/UTNFRA_SO_2do_TP_Vilas.git
cd UTNFRA_SO_2do_TP_Vilas
ls
cp -r ~/RTA_Examen_20250702 ~/repogit/UTNFRA_SO_2do_TP_Vilas/
cp ~/.bash_history ~/repogit/UTNFRA_SO_2do_TP_Vilas/
ls ~/repogit/UTNFRA_SO_2do_TP_Vilas
