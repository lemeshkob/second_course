from django.db import models

# Create your models here.

class Positions(models.Model):
    class Meta():
        db_table = "positions"

    name = models.CharField(max_length=100)
    requirements = models.TextField()
    personal_id = models.IntegerField()


class Workers(models.Model):
    class Meta():
        db_table = "all_workers"

    full_name = models.CharField(max_length=200)
    salary = models.IntegerField()
    sex = models.CharField(max_length=9)
    age = models.IntegerField()
    position = models.ForeignKey(Positions)



