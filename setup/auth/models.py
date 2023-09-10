from django.db import models

# Create your models here.


class OAuth2Application(models.Model):
    name = models.CharField(max_length=255)
    client_id = models.CharField(max_length=255, unique=True)
    client_secret = models.CharField(max_length=255, unique=True)
########## Criação do primeiro modelo ####################
