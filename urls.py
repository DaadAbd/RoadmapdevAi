from django.contrib import admin
from django.urls import path, include
from core.controllers import CustomObtainAuthToken, CustomObtainAdminAuthToken, UserRegistrationView

urlpatterns = [
    path('admin/', admin.site.urls), # Django Native Admin
    
    # 1. روابط التوثيق (Auth)
    path('api/auth/login/', CustomObtainAuthToken.as_view(), name='user_login'),
    path('api/auth/admin/login/', CustomObtainAdminAuthToken.as_view(), name='admin_login'),
    path('api/auth/register/', UserRegistrationView.as_view(), name='user_register'),
    
    # 2. روابط لوحة تحكم الأدمن (التي تستخدمها في React)
    path('api/admin/', include('quiz_api.urls_admin')), 
    
    # 3. روابط واجهة الطالب (للأمتحانات وتوليد الأسئلة)
    path('api/quiz/', include('quiz_api.urls_user')),
    path('api/user/update-photo/', ...),
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)