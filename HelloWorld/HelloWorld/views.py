from django.http import HttpResponse
from django.shortcuts import render
import datetime
def hello (request):
    return HttpResponse("Hello World!")

def smx(request):
    context = {}
    context['hello'] = 'Hello World!'
    context['world'] = 'smx is the best!'
    context['list'] = ['zyh', 'is', 'the', 'best']
    now = datetime.datetime.now()
    context['date'] = now
    return render(request, 'smx.html', context)

def xch(request):
    views_num = 94
    context = {}
    context['num'] = views_num
    return render(request, 'xch.html', context)

def hjy(request):
    context = {}
    context["list"] = ["hjy", "is", "the", "best"]
    return render(request, "hjy.html", context)