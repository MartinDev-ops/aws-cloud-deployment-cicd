FROM python:3.13-slim

COPY --from=public.ecr.aws/awsguru/aws-lambda-adapter:1.1.0 /lambda-adapter /opt/extensions/lambda-adapter

ENV AWS_LWA_PORT=5001

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app ./app

EXPOSE 5001

CMD ["gunicorn", "--bind", "0.0.0.0:5001", "app.app:app"]