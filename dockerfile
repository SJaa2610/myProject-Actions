# Usa la imagen oficial de Nginx como base
FROM nginx:alpine

# Copia tus archivos HTML y CSS al directorio predeterminado de Nginx
COPY . /usr/share/nginx/html

# Expone el puerto 80 para que sea accesible
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
