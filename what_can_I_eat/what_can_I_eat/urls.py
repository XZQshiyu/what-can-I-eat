"""
URL configuration for what_can_I_eat project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from what_can_I_eat import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", views.signin),
    path("index/", views.index),
    # campus test
    path("campus_management/", views.campus_management, name="campus_management"),
    # path("add_campus/", views.add_campus, name="add_campus"),
    path("view_campus", views.view_campus, name="view_campus"),
    path("update_campus", views.update_campus, name="update_campus"),
    path("delete_campus", views.delete_campus, name="delete_campus"),

    # windows test
    path("view_window/<str:canteen_id>", views.view_windows, name="view_windows"),

    path("comment/",views.comment),
    path("contact/",views.contact),
    path("myself/",views.myself),
    path("offCampusFood/",views.offCampusFood),
    path("campusFood/",views.campusFood),
   
    path("review/",views.review),
    path("home/",views.home),


    path("XiYuan/",views.XiYuan),
    path("Xiyuan1/",views.Xiyuan1),


    path("Jinjuyuan/",views.Jinjuyuan),
    path("Zhengyanglou/",views.Zhengyanglou),

    path("Taoliyuan/",views.Taoliyuan),
    path("Yecanbu/",views.Yecanbu),
    # path("food_review/",views.food_review),

    
    path("Donfeng/",views.Donfeng),
    path("Donxue/",views.Donxue),
    path("Donyuan/",views.Donyuan),
    path("Meiguang/",views.Meiguang),
    path("Xingzuo/",views.Xingzuo),
    path("Woke/",views.Woke),
    path("Qinyuanchun/",views.Qinyuanchun),

    path("canteens/",views.canteens),

    path("food_review/<str:window_id>", views.food_review, name="food_review"),
    path("add_review/<str:window_id>", views.add_review, name="add_review"),

    path("update_window/<str:window_id>", views.update_window, name="update_window"),
    path("add_window/", views.add_window, name="add_window"),
]
