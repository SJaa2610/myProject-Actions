# Usa la imagen oficial de Nginx como base
FROM nginx:alpine

# Limpiar el contenido predeterminado de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia solo los archivos de tu proyecto web (HTML, CSS, JS)
COPY index.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/
# Agrega cualquier otro directorio o archivo necesario

# Expone el puerto 80 para que sea accesible
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]