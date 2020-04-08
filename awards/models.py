from django.db import models


class Award(models.Model):
    title - models.CharField(max_length=60)
    img = models.ImageField(upload_to='images')

        def __init__(self, *args, **kwargs):
            super().__init__(*args, **kwargs)
            self.title = None

        def __str__(self):
            return self.title

