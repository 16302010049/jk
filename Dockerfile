FROM node:10
RUN npm install pm2 -g

# ������Ŀ������Ŀ¼��ADD ./backend /usr/src/app
# ���ù���Ŀ¼
WORKDIR /usr/src/app
# ����node����
CMD ["pm2", "start", "app.js", "--no-daemon"]
# RUN pm2 start app.js --no-daemon
# ��¶�˿�
EXPOSE 8080
