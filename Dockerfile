# Usar una imagen base de Python
FROM python:3.9

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY . .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto en el que correrá Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
