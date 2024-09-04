from django.http import HttpResponse
from django.shortcuts import render
from django.contrib import messages
from django.db import connection
from django.urls import reverse
from django.shortcuts import render, redirect
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
#?餐厅id要输入还是用来匹配的？

# zyh 没写完
# 用户接口：

# 展示所有用户 (需要添加："user/user_management.html"、{"users": results}) （可以自己改）
def user_management(request):
    with connection.cursor() as cursor:
        cursor.callproc('GetAllEntity')
        results = cursor.fetchall()
    return render(request, "users/user_management.html", {"users": results})

# 添加用户
def AddUser(request):
    if request.method == 'POST':
        # 获取表单数据
        user_id = request.POST.get('user_id')
        user_name = request.POST.get('user_name')
        introduction = request.POST.get('introduction')
        haed_portrait = request.POST.get('head_portrait')

        #初始化错误信息
        errors = {}

        # 检查id，要求为正整数
        if not user_id:
            errors['user_id'] = 'id 不能为空'
        else:
            try:
                user_id = int(user_id)
                if user_id <= 0:
                    errors['user_id'] = 'id必须是正整数'
            except ValueError:
                errors['user_id'] = 'id 必须是正整数'
        
        # 检查昵称
        if not user_name:
            errors['user_name'] = '昵称不能为空'
        
        # 检查简介
        if not introduction:
            errors['introduction'] = '简介不能为空'
        # 检查性别
        if  not haed_portrait :
            errors['head_portrait'] = "头像不能为空"
        
        # 调用存储过程
        with connection.cursor() as cursor:
            err = ''
            cursor.callproc('AddUser', [user_id, user_name, introduction, haed_portrait, err
            ])
            cursor.execute('SELECT @_AddUser_4')
            err = cursor.fetchone()[0]
            print(err)
            if err:
                errors['database'] = 'err' # 这个database我不知道要不要改
                return render(request, "users/AddUser.html", {"errors": errors})
            else:
                return redirect(reverse("banksystem:client")) # 这个我不知道怎么改
    return render(request, "users/AddUser.html")

# 更新用户信息
def UpdateUser(request, user_id): # 这个user_id应该是点击对应的用户之后自动传上去的，但是我不知道怎么做（
    if request.method == 'POST':
        user_name = request.POST.get('user_name')
        introduction = request.POST.get('introduction')
        head_portrait = request.POST.get('head_portrait')

        errors = {}

        if not errors:
            with connection.cursor() as cursor:
                err = ''
                cursor.callproc('UpdateUser', [user_id, user_name or None, introduction or None, head_portrait or None, err])
                cursor.execute('SELECT @_UpdateUser_4')
                err = cursor.fetclone()[0]
                if err:
                    errors['datanase'] = err # 这个database同理 我也不知道怎么改……

        if errors:
            return render(request, "users/UpdateUser.html", {"errors": errors})
        else:
            return redirect(reverse("banksystem:client"))
        
    return render(request, "users/UpdateUser.html")

# 删除用户信息
def DeleteUser(request): # 感觉这个user_id应该是点击哪个user，哪个user的user_id就被传进去，不用再输入（？
    if request.method == 'POST':
        user_id = request.POST.get('user_id')
        errors = {}

        if not user_id:
            errors['user_id'] = 'user_id cannot be empty'
        else:
            with connection.cursor() as cursor:
                err = ''
                cursor.callproc("DeleteUser", [user_id, err])
                cursor.execute("SELECT @_DeleteUser_1")
                err = cursor.fetchone()[0]
                if err:
                    errors['database'] = err
        if errors:
            return render(request, "users/DeleteUser.html", {"errors": errors})
        else:
            return redirect(reverse("banksystem:client"))

    return render(request, "users/DeleteUser.html")

# 通过id和name查询用户
def search_user(request):
    results = []
    if request.method == 'POST':
        user_name = request.POST.get('user_name', None)
        user_id = request.POST.get('user_id', None)

        with connection.cursor() as cursor:
            cursor.callproc('search_user', [user_name, user_id])
            results = cursor.fetchall()
    return render(request, "users/search_user.html", {"results": results})

# 