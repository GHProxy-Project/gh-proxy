# 使用官方 Python 基础镜像
FROM python:3.9-slim

# 复制当前目录的内容到容器中的 /app 目录
COPY ./app /app

# 设置工作目录
WORKDIR /app

# 安装依赖库
RUN pip install --no-cache-dir requests flask

# 设置环境变量，避免 Python 缓存文件生成
ENV PYTHONUNBUFFERED=1

# 暴露端口 4444
EXPOSE 4444

# 运行 Python 脚本，替换为你的 Python 文件名，例如 "app.py"
CMD ["python", "/app/main.py"]
