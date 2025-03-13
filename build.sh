#!/bin/bash

echo "construye imagen Docker"
docker build -t temp-builder .

echo "contenedor temporal"
docker create --name temp-container temp-builder

echo "saca el JAR del contenedor"
docker cp temp-container:/output/jadiya-1.0-SNAPSHOT.jar .

echo "elimina contenedor temporal"
docker rm temp-container

echo "Eliminando imagen temporal"
docker rmi temp-builder

echo "Termino."
