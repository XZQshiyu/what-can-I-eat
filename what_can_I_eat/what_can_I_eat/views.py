from django.http import HttpResponse
from django.shortcuts import render
from django.contrib import messages

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

def comment(request):
    return render(request,"comment.html")

def contact(request):
    return render(request,"contact.html")

def myself(request):
    return render(request,"myself.html")

def offCampusFood(request):
    return render(request,"offCampusFood.html")

def campusFood(request):
    return render(request,"campusFood.html")

def home(request):
    return render(request,"home.html")