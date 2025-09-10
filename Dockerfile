# Utiliser une image Python officielle
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Commande de lancement (modifie si nécessaire)
CMD ["python", "main.py"]

# Exposer le port (si ton app tourne sur 8080 par ex.)
EXPOSE 8080
