FROM python:3.14-slim
WORKDIR /app
COPY hello.py .
CMD ["python", "hello.py"]

