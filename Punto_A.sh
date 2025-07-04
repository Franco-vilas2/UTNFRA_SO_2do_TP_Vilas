#!/bin/bash
# Punto A - Creación de LVM para Docker, Workareas y Swap

# Crear volúmenes físicos
sudo pvcreate /dev/sdc
sudo pvcreate /dev/sdd

# Crear grupos de volumen
sudo vgcreate vg_datos /dev/sdc
sudo vgcreate vg_temp /dev/sdd

# Crear volúmenes lógicos
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp

# Formatear los volúmenes
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas

# Crear puntos de montaje
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work

# Montar volúmenes
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work

# Activar swap
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
