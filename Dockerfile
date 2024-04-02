# Utiliser une image de base nginx
FROM nginx:latest
RUN apt-get update && apt-get install -y apache2
# Créer le repertoire ou stocker les dépendences de l'application
WORKDIR /app

# Copier les fichiers HTML, CSS, JavaScript et les fichiers images associés dans le conteneur
COPY . /usr/local/apache2/htdocs/

# Exposer le port 80 pour le serveur Nginx
EXPOSE 80

# Démarrer Nginx lorsque le conteneur démarre
CMD ["httpd-foreground"]


