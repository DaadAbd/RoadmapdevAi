import os
import requests
import time
import json
from dotenv import load_dotenv

# تحميل الإعدادات من ملف .env
load_dotenv()

def test_generation_speed():
    api_key = os.getenv("OPENROUTER_API_KEY")
    url = "https://openrouter.ai/api/v1/chat/completions"
    
    if not api_key:
        print("❌ خطأ: لم يتم العثور على المفتاح. تأكد من وجود ملف .env في نفس المجلد.")
        return

    print(f"🚀 جاري طلب توليد اختبار (3 أسئلة) وقياس سرعة الاستجابة...")
    
    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json",
        "HTTP-Referer": "http://localhost:8000",
    }
    
    data = {
        "model": "google/gemini-2.0-flash-001",
        "messages": [
            {
                "role": "system", 
                "content": "You are a tech instructor. Generate a JSON quiz with 3 questions about Python. Return ONLY JSON."
            },
            {
                "role": "user", 
                "content": "Generate 2 MCQs and 1 coding task."
            }
        ],
        "response_format": {"type": "json_object"}
    }

    start_time = time.time()

    try:
        response = requests.post(url, headers=headers, json=data, timeout=30)
        end_time = time.time()
        
        duration = end_time - start_time

        if response.status_code == 200:
            print(f"✅ تم التوليد بنجاح!")
            print(f"⏱️ الوقت المستغرق: {duration:.2f} ثانية")
            print("-" * 40)
            
            # استخراج النص من رد API
            raw_content = response.json()['choices'][0]['message']['content']
            
            # تحويل النص المستلم (String) إلى كائن JSON (Dictionary/List) لطباعته بشكل منسق
            quiz_data = json.loads(raw_content)
            
            print("📦 الأسئلة المولدة:")
            # طباعة الـ JSON بشكل جميل مع إزاحة (indent) وقراءة الحروف العربية/الخاصة بشكل صحيح
            print(json.dumps(quiz_data, indent=4, ensure_ascii=False))
            
        else:
            print(f"❌ فشل الطلب بكود: {response.status_code}")
            print(f"تفاصيل: {response.text}")
            
    except Exception as e:
        print(f"🔴 خطأ أثناء التنفيذ: {e}")

if __name__ == "__main__":
    test_generation_speed()