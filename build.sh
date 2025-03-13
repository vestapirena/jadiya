#!/bin/bash

echo "🐳 Construyendo imagen de Docker..."
docker build -t temp-builder .

echo "📦 Creando contenedor temporal..."
docker create --name temp-container temp-builder

echo "📂 Extrayendo el JAR del contenedor..."
docker cp temp-container:/output/jadiya-1.0-SNAPSHOT.jar .

echo "🗑 Eliminando contenedor temporal..."
docker rm temp-container

echo "🗑 Eliminando imagen temporal..."
docker rmi temp-builder

echo "✅ Proceso completado con éxito."
