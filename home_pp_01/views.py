from django.shortcuts import render

# Create your views here.

def home(request):

    return render(request,'home_pp_01/test.html')


def test(request):

    return render(request,'home_pp_01/test2.html')