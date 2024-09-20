# Utiliser l'image FastAPI de base
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port de l'application
EXPOSE 8001

# Commande pour démarrer l'application
CMD ["uvicorn", "app.main:app", "--reload", "--port=8001"]
