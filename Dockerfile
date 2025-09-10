FROM python:3.12-slim
workdir /app
copy requirements.txt requirements.txt
run pip install -r requirements.txt
copy . .
expose 8000
CMD ["python", "app.py"]
