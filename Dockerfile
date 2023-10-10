FROM python:3.11-slim

ENV PYTHONFAULTHANDLER=1 \
     PYTHONUNBUFFERED=1 \
     PYTHONDONTWRITEBYTECODE=1 \
     PIP_DISABLE_PIP_VERSION_CHECK=on

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt --no-cache-dir

RUN chmod +x start.sh

# 运行shell脚本
CMD ["start.sh"]
