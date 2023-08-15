# انتخاب تصویر پایتون 3.11 به عنوان تصویر پایه
FROM python:3.11

# تنظیم متغیرهای محیطی
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# تعیین مسیر کاری به /code
WORKDIR /code

# کپی فایل requirements.txt به داخل کانتینر
COPY requirements.txt /code/

# نصب وابستگی‌ها از فایل requirements.txt
RUN pip install -r requirements.txt

# کپی کل کد اصلی برنامه به داخل کانتینر
COPY . /code/

