#!/bin/bash

# تأكد من أنك تعمل على نظام macOS مع تثبيت Homebrew وPython

# الخطوة 1: تثبيت Python-Apple-support
echo "استنساخ Python-Apple-support..."
git clone https://github.com/beeware/python-apple-support.git
export PYTHON_APPLE_SUPPORT=$(pwd)/python-apple-support

# الخطوة 2: استنساخ مستودع Mobile Forge
echo "استنساخ مستودع Mobile Forge..."
git clone https://github.com/YasseenAlhusammi/mobile-forge.git
cd mobile-forge

# الخطوة 3: إعداد البيئة الافتراضية
echo "إعداد البيئة الافتراضية..."
source ./setup-iOS.sh 3.11

# الخطوة 4: بناء حزمة lru-dict
echo "بناء حزمة lru-dict..."
forge iOS lru-dict

# الخطوة 5: التحقق من نتائج البناء
echo "التحقق من نتائج البناء..."
if [ -d "dist" ]; then
    echo "تم العثور على الحزم في مجلد dist."
else
    echo "لم يتم العثور على الحزم في مجلد dist."
fi

echo "تمت العملية بنجاح!"
