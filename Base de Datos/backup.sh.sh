#!/bin/bash

# Configuración del contenedor y nombre de la imagen
contenedor="oracle19c"
nombreimg="backup$(date +%Y%m%d%H%M%S)"
tar="${nombreimg}.tar"

#variables ftp
servidor="192.168.0.189"
user="almi"
pw="almi123"
ruta="/home/almi"

#crear la imagen
docker commit $contenedor $nombreimg
#guardar la imagen
docker save -o $tar $nombreimg
#guardar imagen en el servidor ftp
curl -T $tar--ftp-create-dirs ftp://$user:$pw@$servidor/$ruta/$tar
#recuperar espacio
docker rmi $nombreimg
rm $tar

