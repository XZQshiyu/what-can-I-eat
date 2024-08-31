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







def food_review(request):
    if request.method == 'POST':
        # 获取表单数据
        dish_name = request.POST.get('dish_name')
        image_files = request.FILES.getlist('image_files')
        review_text = request.POST.get('review_text')
        rating = request.POST.get('rating')
        campus = request.POST.get('campus')
        canteen = request.POST.get('canteen')
        window = request.POST.get('window')

        errors = {}

        if not dish_name:
            errors['dish_name'] = '菜品名称不能为空'

        if not image_files:
            errors['image_files'] = '请上传图片'

        if not review_text:
            errors['review_text'] = '评价内容不能为空'
       
        if not rating:
            errors['rating'] = '评分不能为空'

        if not campus:
            errors['campus'] = '校区不能为空'

        if not canteen:
            errors['canteen'] = '食堂不能为空'

        if not window:
            errors['window'] = '窗口不能为空'

        if errors:
            return render(request, "comment.html", {"errors": errors})
        else:

            return redirect(reverse("your_app_name:review_list"))
    return render(request, "comment.html")

