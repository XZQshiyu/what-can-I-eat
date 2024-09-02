from django.http import HttpResponse
from django.shortcuts import render
from django.contrib import messages
from django.db import connection


def signin(request):
    if request.method == 'POST':
        data = request.POST.dict()

        # 验证表单数据的有效性
        user_id = data.get("student_id")
        password = data.get("password")
        print(user_id)
        print(password)
        if user_id and password:
            if user_id == "xch" and password == "305":
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

def home(request):
    return render(request,"home.html")

def contact(request):
    return render(request,"contact.html")

def myself(request):
    return render(request,"myself.html")

def offCampusFood(request):
    return render(request,"offCampusFood.html")

def campusFood(request):
    return render(request,"campusFood.html")


def review(request):
    return render(request,"review.html")

def XiYuan(request):
    return render(request,"XiYuan.html")

def Xiyuan1(request):
    return render(request,"Xiyuan1.html")
    
def Taoliyuan(request):
    return render(request,"Taoliyuan.html")

def Yecanbu(request):
    return render(request,"Yecanbu.html")

def Jinjuyuan(request):
    return render(request,"Jinjuyuan.html")

def Zhengyanglou(request):
    return render(request,"Zhengyanglou.html")

def Donyuan(request):
    return render(request,"Donyuan.html")

def Donxue(request):
    return render(request,"Donxue.html")

def Donfeng(request):
    return render(request,"Donfeng.html")

def Xingzuo(request):
    return render(request,"Xingzuo.html")

def Woke(request):
    return render(request,"Woke.html")

def Meiguang(request):
    return render(request,"Meiguang.html")

def Qinyuanchun(request):
    return render(request,"Qinyuanchun.html")


#提交表单
def add_review(request, window_id):
    if request.method == 'POST':
        dish_name = request.POST.get('dish_name')
        image_files = request.POST.get('image_files')
        review_text = request.POST.get('review_text')
        rating = request.POST.get('rating')
        with connection.cursor() as cursor:
            cursor.callproc('add_review', [ window_id, dish_name, image_files, review_text, rating])
        return HttpResponse("Review added successfully") 
    return render(request, 'add_review.html')


# campus test
def campus_management(request):
    with connection.cursor() as cursor:
        cursor.callproc('get_all_campuses')
        results = cursor.fetchall()
    return render(request, "campus/campus_management.html", {"campuses": results})

# def add_campus(request):
def view_campus(request, campus_id):
    return 

def update_campus(request, campus_id):
    return

def delete_campus(request, campus_id):
    return 

def canteens(request):
    return render(request,"canteens.html")



# windows test


def view_windows(request, canteen_id):
    windows_list = []
    if request.method == 'GET':
        with connection.cursor() as cursor:
            # 获取一个食堂的所有窗口
            cursor.callproc('get_windows_by_canteen', [canteen_id])
            windows_list = cursor.fetchall()
    return render(request, 'windows/view_window.html', {'windows': windows_list})

# review test
def food_review(request, window_id):
    review_list = []
    if request.method == 'GET':
        with connection.cursor() as cursor:
            # 获取一个窗口的所有评论
            cursor.callproc('get_comment_by_id', [window_id])
            review_list = cursor.fetchall()
    return render(request, 'food_review.html', {'comments': review_list})

# 删除窗口
def delete_window_route(request,window_id):
     if request.method == 'GET':
        with connection.cursor() as cursor:
            # 调用存储过程进行删除操作
            cursor.callproc('delete_window', [window_id])
            connection.commit()
        return HttpResponse("窗口删除成功")
          
# 更新窗口
def update_window(request,window_id):
    if request.method == 'POST':
        data = request.POST.dict()
        window_name = data.get("p_window_name")
        canteen_id = data.get("p_canteen_id")
        window_description = data.get("p_window_description")  #图片
        with connection.cursor() as cursor:
            cursor.callproc('update_window', [window_id, window_name, window_description, canteen_id])
            connection.commit()
        return HttpResponse("窗口更新成功")
    return render(request, 'windows/update_window.html')

# 添加窗口
def add_window(request):
    if request.method == 'POST':
        data = request.POST.dict()
        window_id = data.get("p_window_id")
        window_name = data.get("p_window_name")
        canteen_id = data.get("p_canteen_id")
        window_description = data.get("p_window_description")  #图片
        with connection.cursor() as cursor:
            cursor.callproc('add_window', [window_id,window_name, window_description, canteen_id])
            connection.commit()
        return HttpResponse("窗口添加成功")
    return render(request, 'windows/add_window.html')

