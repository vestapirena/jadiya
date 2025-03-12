# Usar una imagen oficial de Maven como entorno de compilación
FROM maven:3.9.9-eclipse-temurin-17 AS build

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY . .

# Compilar el proyecto y generar el JAR
RUN mvn clean package -DskipTests

# Copiar el JAR generado a un volumen de salida
RUN mkdir -p /output && cp target/jadiya-1.0-SNAPSHOT.jar /output/

# Definir el directorio de salida como volumen para extraer el JAR
VOLUME ["/output"]
