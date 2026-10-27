FROM soulter/astrbot-t2i-service:latest

# 设置服务端口
ENV PORT=8999

# 指定 Chromium 安装位置
ENV PLAYWRIGHT_BROWSERS_PATH=/opt/playwright-browsers

# 在镜像构建时安装 Chromium
RUN mkdir -p /opt/playwright-browsers \
    && python -m playwright install chromium \
    && chmod -R a+rX /opt/playwright-browsers

# 使用临时目录，避免文件系统只读问题
WORKDIR /tmp

# 启动原始文转图服务
CMD ["python", "/app/main.py"]

EXPOSE 8999
