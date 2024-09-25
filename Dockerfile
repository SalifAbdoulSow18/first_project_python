# Utiliser une image Python de base
FROM python:3.10-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --upgrade Flask
RUN pip install -r requirements.txt


# Exposer le port sur lequel l'application fonctionnera
EXPOSE 5000

# Définir la commande par défaut à exécuter lors du démarrage du conteneur
CMD ["python", "app.py"]
