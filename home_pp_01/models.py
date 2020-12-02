from django.db import models



class product(models.Model):

    pid = models.AutoField(primary_key=True)
    ptype = models.CharField(max_length=50,blank=True,null=True)
    pname = models.CharField(max_length=100,blank=True,null=True)
    pcontent = models.CharField(max_length=500,blank=True,null=True)
