# utilisation de l'image python
FROM python:3.8-alpine

# copie requirements.txt dans l'image
COPY ./src/requirements.txt /app/requirements.txt

# créer Workdir 
WORKDIR /app

# installation des dépendances du fichier requirements.txt
RUN pip install -r requirements.txt

# copie des fichiers du local à l'image
COPY ./src /app

# configuration de python comme commande de démarage pour lancer le container 
ENTRYPOINT [ "python" ]

#exécusion du fichier app.py
CMD ["app.py" ]