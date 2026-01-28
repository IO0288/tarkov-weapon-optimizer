# 使用 Python 3.10 作为基础镜像
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 安装系统依赖（如果有需要）
RUN apt-get update && apt-get install -y \
    git \
    # gcc \
    # g++ \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/AhaiMk01/tarkov-weapon-optimizer.git

WORKDIR /app/tarkov-weapon-optimizer

# 安装 Python 依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露 Streamlit 默认端口
EXPOSE 8501

# 设置健康检查
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

# 运行应用
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
