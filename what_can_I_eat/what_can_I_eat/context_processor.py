from django.db import connection 
from django.urls import reverse
def global_settings(request):
    user_id_no = '1'
    with connection.cursor() as cursor:
        cursor.execute("SELECT *FROM user WHERE user_id = %s", user_id_no)
        user = cursor.fetchone()
        user_id = user[0]
        user_name = user[1]
        user_picture = user[3]
        user_introduction = user[2]
    return {
        'user_id': user_id,
        'user_name': user_name,
        'user_picture': user_picture,
        'user_introduction': user_introduction,
    }