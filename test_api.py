import os
import requests
import json
from dotenv import load_dotenv

# تحميل المفتاح من ملف .env
load_dotenv()

def verify_ai_logic():
    api_key = os.getenv("OPENROUTER_API_KEY")
    url = "https://openrouter.ai/api/v1/chat/completions"
    
    if not api_key:
        print("❌ Error: OPENROUTER_API_KEY not found.")
        return

    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json",
        "HTTP-Referer": "http://localhost:8000",
    }
    
    # الـ Prompt التجريبي لمحاكاة توليد سؤال برمجي
    system_prompt = "You are a Python instructor. Return ONLY a JSON object for a quiz question."
    user_prompt = (
        "Generate one MCQ question about Python Decorators. "
        "Include: 'question_text', 'options_json' (a,b,c,d), and 'correct_answer'."
    )

    data = {
        "model": "google/gemini-2.0-flash-001",
        "messages": [
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": user_prompt}
        ],
        "response_format": {"type": "json_object"}, # إجبار الموديل على إخراج JSON
        "temperature": 0.5
    }

    print("🚀 Testing AI Logic & JSON Transmission...")
    
    try:
        response = requests.post(url, headers=headers, json=data, timeout=20)
        
        if response.status_code == 200:
            content = response.json()['choices'][0]['message']['content']
            
            # محاولة تحويل النص المستلم إلى JSON حقيقي للتأكد من سلامته
            parsed_json = json.loads(content)
            
            print("✅ Success! The AI generated a valid JSON structure:")
            print(json.dumps(parsed_json, indent=4))
            
            # فحص وجود الحقول المطلوبة
            if "question_text" in parsed_json and "options_json" in parsed_json:
                print("\n✨ التحليل: الحساب والموديل جاهزان تماماً للعمل مع مشروعك الأساسي.")
            else:
                print("\n⚠️ تنبيه: الموديل رد بـ JSON لكن بعض الحقول ناقصة.")
                
        else:
            print(f"❌ Error {response.status_code}: {response.text}")
            
    except Exception as e:
        print(f"🔴 Connection Failed: {e}")

if __name__ == "__main__":
    verify_ai_logic()