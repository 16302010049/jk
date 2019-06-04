FROM node:10
RUN npm install pm2 -g

# 复制项目到容器目录下ADD ./backend /usr/src/app
# 设置工作目录
WORKDIR /usr/src/app
# 开启node进程
CMD ["pm2", "start", "app.js", "--no-daemon"]
# RUN pm2 start app.js --no-daemon
# 暴露端口
EXPOSE 8080
