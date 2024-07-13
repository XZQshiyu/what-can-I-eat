from django.http import HttpResponse
from django.shortcuts import render
from django.views.decorators import csrf

def search_form(request):
    return render(request, 'search_form.html')

def search(request):
    request.encoding = 'utf-8'
    if 'q' in request.GET and request.GET['q']:
        message = 'You searched for: ' + request.GET['q']
    else:
        message = 'You submitted an empty form.'
    return HttpResponse(message)

def search_post(request):
    ctx = {}
    if request.POST:
        ctx['rlt'] = request.POST['q']
    return render(request, "post.html", ctx)