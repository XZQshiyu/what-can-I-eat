from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.db import connection
from django.urls import reverse
from django.views.decorators.csrf import csrf_protect
from django.http import HttpResponseNotFound
from django.contrib import messages
from django.core.files.storage import default_storage
from django.core.files.base import ContentFile
def signin(request):
    if request.method == 'POST':
        data = request.POST.dict()

        # 验证表单数据的有效性
        user_id = data.get("student_id")
        password = data.get("password")
        print(user_id)
        print(password)
        if user_id and password:
            if user_id == "ustc" and password == "639":
                return render(request, "home.html")
            else:
                messages.error(request, "Invalid username or passowrd")
        else:
            messages.error(request, "Both username and password are required to log in")
    return render(request, "signin.html")

def index(request):
    return render(request, "home.html")



# def add_campus(id, name):
#     campus_id = id
#     campus_name = name
#     with connection.cursor() as cursor:
#         cursor.callproc('add_campus', [campus_id, campus_name])

# print(1)
# add_campus("10000", "USTC")