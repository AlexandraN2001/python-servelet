# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo de requisitos y la aplicación al contenedor
COPY requirements.txt requirements.txt
COPY app.py app.py

# Instala las dependencias de Python
RUN pip install -r requirements.txt

# Expone el puerto en el contenedor
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "Hour.py"]
