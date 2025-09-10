FROM python:3.12-slim
workdir /app
copy requirements.tsk .
run pip install --nocache-dir -r requirements.tsk
copy . .
expose 8000
CMD ["python", "app.py"]
