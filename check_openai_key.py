import os
from dotenv import load_dotenv
from google import genai
from google.genai.errors import APIError

load_dotenv() 
# تأكد أن اسم المتغير في ملف .env هو GEMINI_API_KEY
key = os.getenv("GEMINI_API_KEY")

print("Key Loaded:", key is not None and len(key) > 10)

try:
    # ملاحظة: مكتبة google-genai الجديدة تبحث عن api_key داخل الـ Client
    client = genai.Client(api_key=key) 
    
    response = client.models.generate_content(
        model="gemini-2.0-flash", # التعديل هنا: 2.0 بدلاً من 2.5
        contents="Generate one word: Success",
        config={"temperature": 0}
    )
    print("✅ SUCCESS: API Key is valid and working.")
    print("Response sample:", response.text)
    
except Exception as e:
    print(f"❌ FAILURE: {e}")