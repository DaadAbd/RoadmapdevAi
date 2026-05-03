import os
import sys
import django
from datetime import date

# 1. إعداد المسارات
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(BASE_DIR)

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings')

try:
    django.setup()
    from django.contrib.auth import get_user_model
    User = get_user_model()
    print("✅ تم تحميل إعدادات المشروع بنجاح.")
except Exception as e:
    print(f"❌ خطأ في تحميل دجانغو: {e}")
    sys.exit(1)

def create_super_user():
    # بناءً على قائمة الحقول في الخطأ:
    # نستخدم email كمعرف، و full_name بدلاً من username
    email = "admin1@demo.com"
    password = "admin123"
    full_name = "System Admin"
    birth_date = date(1995, 5, 20) # لاحظ الاسم الصحيح هو birth_date وليس birth_day

    try:
        # البحث باستخدام البريد الإلكتروني لأنه المعرف في الموديل الخاص بك
        if not User.objects.filter(email=email).exists():
            print(f"--- جاري إنشاء Superadmin بالبريد: {email} ---")
            
            # تمرير الحقول الصحيحة لـ create_superuser
            User.objects.create_superuser(
                email=email,
                password=password,
                full_name=full_name,
                birth_date=birth_date
            )
            print(f"✅ تم إنشاء الحساب بنجاح!")
            print(f"البريد الإلكتروني: {email}")
            print(f"كلمة المرور: {password}")
        else:
            print(f"ℹ️ الحساب المرتبط بالبريد '{email}' موجود مسبقاً.")
    except Exception as e:
        print(f"❌ فشل إنشاء المستخدم: {e}")

if __name__ == "__main__":
    create_super_user()