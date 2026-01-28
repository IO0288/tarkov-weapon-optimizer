# !/bin/bash

# 构建 Docker 镜像
docker build -t tarkov-weapon-optimizer:latest .

echo "镜像构建完成！"
echo "运行以下命令启动应用："
echo "docker run -d -p 8501:8501 --name tarkov-optimizer tarkov-weapon-optimizer:latest"