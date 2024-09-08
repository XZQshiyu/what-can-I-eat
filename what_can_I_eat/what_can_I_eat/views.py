from django.http import HttpResponse
from django.shortcuts import render,redirect
from django.contrib import messages
from django.db import connection
from django.urls import reverse
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

def user1(request):
    return render(request,"user1.html")


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

def tiezi(request):
    return render(request,"tiezi.html")



# windows test


def view_windows(request, canteen_id):
    windows_list = []
    if request.method == 'GET':
        with connection.cursor() as cursor:
            # 获取一个食堂的所有窗口
            cursor.callproc('get_windows_by_canteen', [canteen_id])
            windows_list = cursor.fetchall()
    return render(request, 'windows/view_window.html', {'windows': windows_list, 'canteen_id': canteen_id})


# review test
def food_review(request, window_id):
    review_list = []
    if request.method == 'GET':
        with connection.cursor() as cursor:
            # 获取一个窗口的所有评论
            cursor.callproc('get_all_comments_from_window', [window_id])
            review_list = cursor.fetchall()
            print(review_list)
    return render(request, 'food_review.html', {'comments': review_list})

# 删除窗口
def delete_window_route(request,window_id):
    if request.method == 'GET':
        with connection.cursor() as cursor:
            cursor.execute('SELECT canteen_id FROM food_window WHERE window_id = %s', [window_id])
            canteen_id = cursor.fetchone()
            # 调用存储过程进行删除操作
            cursor.callproc('delete_window', [window_id])
            connection.commit()
        #return HttpResponse("窗口删除成功")
    return render(request, 'windows/delete_window.html',{"canteen_id": canteen_id})
     
# 更新窗口
def update_window(request, window_id):
    with connection.cursor() as cursor:
        cursor.execute('SELECT * FROM food_window WHERE window_id = %s', [window_id])
        window = cursor.fetchone()
    if not window:
        return HttpResponse("窗口不存在")

    if request.method == 'POST':
        data = request.POST.dict()
        window_name = data.get("window_name")
        window_description = data.get("window_description")  #图片
        canteen_id = window[2]
        print(window_name, window_description, canteen_id)
        print(window_id)
        image_file = request.FILES.get('window_image')
        image_url = None
        if image_file:
            image_name = f"images/{window_name.replace(' ', '_').lower()}.jpg"
            image_path = default_storage.save(image_name, ContentFile(image_file.read()))
            image_url = f"/media/{image_path}"
        
        with connection.cursor() as cursor:
            cursor.callproc('update_window', [window_id, window_name, canteen_id, window_description, image_url])
            connection.commit()
        return redirect(reverse('view_windows', kwargs={'canteen_id': canteen_id}))
    return render(request, 'windows/update_window.html', {'window_id': window_id, 'window': window})

# 添加窗口
def add_window(request,canteen_id):
    if request.method == 'POST':
        data = request.POST.dict()   
        with connection.cursor() as cursor:
            cursor.execute('SELECT * FROM food_window')
            window_id_list = cursor.fetchall()
        window_id = 0
        # print(window_id_list)
        if window_id_list:
            window_id = int(window_id_list[-1][0]) + 1
        else:
            window_id = 0
        window_name = data.get("window_name")     
        window_description = data.get("window_description")  #描述
        # 读取图像文件
        image_file = request.FILES.get('window_image')
        print(image_file)
        image_url = None
        if image_file:
            # 生成图片文件名
            image_name =  f"images/{window_name.replace(' ', '_').lower()}.jpg"
            # 保存图片文件
            image_path = default_storage.save(image_name, ContentFile(image_file.read()))
            # 获取文件路径
            image_url = f"/media/{image_path}"
        with connection.cursor() as cursor:
            cursor.callproc('add_window', [window_id, window_name, canteen_id, window_description, image_url])
            connection.commit()
        return redirect(reverse('view_windows', args=[canteen_id]))
    return render(request, 'windows/add_window.html', {'canteen_id': canteen_id})
#?餐厅id要输入还是用来匹配的？


# 储存点赞数
def add_like(request,comment_id):
    if request.method == 'POST':
        with connection.cursor() as cursor:
            cursor.callproc('add_like', [comment_id])
            connection.commit()
        return HttpResponse("点赞成功")
    return render(request, 'food_review.html')



#dish_comment   smx
#发布dish_comment
def add_dish_comment(request):
    #后端没有鲁棒性支持，所以先没有error
    if request.method == 'POST':
        import datetime
        #获取表单数据
        dish_name = request.POST.get('dish_name')
        file = request.POST.get('file')
        context = request.POST.get('context')
        rating = request.POST.get('rating')
        like_number = 0
        publish_time = datetime.datetime.now()
     

        with connection.cursor() as cursor:
            cursor.callproc('add_comment', [dish_name, file, context, rating, publish_time])

        return redirect(reverse('what_can_I_eat:comment'))  #在这里我给urls.py里给comment加了一个name,如果你们觉得需要重定向到其他地方就修改
    else:
        return render(request, "add_dish_comment.html") #前端再做这个页面
        
#通过comment_id搜索commment
def view_comment_by_id(request, comment_id):
    with connection.cursor() as cursor:
        cursor.callproc('get_comment_by_id', [comment_id])
        comment = cursor.fetchone()
        if not comment:
            return HttpResponse("评论不存在")
        else:
            return render(request, "view_comment_by_id.html",{'comment':comment})   #前端再做这个页面 

#修改评论
def update_comment(request, comment_id):
    with connection.cursor() as cursor:
        cursor.execute('SELECT * FROM dish_comment WHERE comment_id = %s', comment_id)
        comment = cursor.fetchone()
    if not comment:
        return HttpResponse("评论不存在")
    
    if request.method == 'POST':
        comment = request.POST.get('comment')
        if not comment:
            return HttpResponse("请输入新评论！")
        with connection.cursor() as cursor:
            cursor.callproc('update_comment',[comment, comment])
            connection.commit()
        return HttpResponse("评论修改成功！")   #觉得修改完评论后应该回到评论页面的话，修改这里做重定向
    
    return render(request, "update_comment.html")

#删除评论
def delete_comment(request, comment_id):
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM dish_comment WHERE comment_id = %s", comment_id)
        comment = cursor.fetchone()
        if not comment:
            return HttpResponse("评论不存在")
        cursor.callproc('delete_comment',comment_id)
        return HttpResponse("评论已删除")
    
#根据用户搜索评论
def view_comments_by_user(request, user_id):
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM user WHERE user_id = %s", user_id)
        user = cursor.fetchone()
        if not user:
            return HttpResponse("用户不存在")
        cursor.callproc("search_comment_by_user", [user_id])
        user_comments = cursor.fetchall()
    return render(request, "view_comments_by_user", {"user_comments": user_comments})

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
                return redirect(reverse("users/user_management.html")) # 这个我不知道怎么改
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
            return redirect(reverse("users/user_management.html"))   
        
    return render(request, "users/UpdateUser.html")

# 删除用户信息
def DeleteUser(request, user_id):
     if request.method == 'GET':
        with connection.cursor() as cursor:
            # 调用存储过程进行删除操作
            cursor.callproc('DeleteUser', [user_id])
            connection.commit()
        return HttpResponse("用户删除成功")

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
