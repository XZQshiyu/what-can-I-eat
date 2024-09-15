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

    # canteen list
    path("comment/",views.comment, name = "comment"),
    path("contact/",views.contact),
    path("myself/<str:user_id>",views.myself, name="myself"),
    path("offCampusFood/",views.offCampusFood),
    path("campusFood/",views.campusFood),
    path("review/",views.review),
    path("home/",views.home),
   
    path("canteens/",views.canteens),

    # comment and review
    path("food_review/<str:window_id>", views.food_review, name="food_review"),
    path("reply/<str:comment_id>",views.reply,name="reply"),
    path("add_dish_comment/<str:window_id>", views.add_dish_comment, name="add_dish_comment"),

    # windows test
    path("view_window/<str:canteen_id>", views.view_windows, name="view_windows"),    
    path("update_window/<str:window_id>", views.update_window, name="update_window"),
    path("add_window/<str:canteen_id>", views.add_window, name="add_window"),
    path("delete_window/<str:window_id>", views.delete_window_route, name="delete_window"),

    path("user_management/", views.user_management, name="user_management"),
    path("AddUser/", views.AddUser, name="AddUser"),
    path("UpdateUser/<str:user_id>", views.UpdateUser, name="UpdateUser"),
    path("DeleteUser/<str:user_id>", views.DeleteUser, name="DeleteUser"),
    path("user1/", views.user1, name="user1"),
    path("tiezi/",views.tiezi),
    path("show_get_reply/<str:user_id>",views.show_get_reply, name="show_get_reply"),
    path("show_bookmark/<str:user_id>",views.show_bookmark, name="show_bookmark"),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
