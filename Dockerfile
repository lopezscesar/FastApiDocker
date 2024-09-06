FROM python:3.12-slim

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install fastapi
RUN pip install "uvicorn[standard]"

COPY . .

EXPOSE 8080

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
