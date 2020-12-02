from django.urls import path

from home_pp_01 import views

urlpatterns = [

    path("", views.home),
    path("test2", views.test),
]
