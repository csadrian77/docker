# Usamos la imagen oficial de Python
FROM python:3.9-slim

# Establecemos el directorio de trabajo en /app
WORKDIR /app

# Copiamos el archivo de requerimientos (si tienes dependencias adicionales)
# RUN pip install -r requirements.txt

# Copiamos el contenido del directorio actual al contenedor
COPY . /app

# Instalamos Flask
RUN pip install Flask

# Exponemos el puerto 5000
EXPOSE 5000

# Indicamos el comando para ejecutar la aplicación
CMD ["python", "app.py"]
