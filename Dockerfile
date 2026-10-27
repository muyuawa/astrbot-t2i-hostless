FROM soulter/astrbot-t2i-service:latest

ENV PORT=8999

# 使用临时目录存放生成的图片
WORKDIR /tmp

# 从原始应用目录启动服务
CMD ["python", "/app/main.py"]

EXPOSE 8999
