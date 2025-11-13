FROM nginx:alpine

# 设置工作目录
WORKDIR /usr/share/nginx/html

# 删除nginx默认页面
RUN rm -rf ./*

# 复制项目文件到nginx目录
COPY index.html .
COPY img ./img

# 暴露80端口
EXPOSE 80

# 启动nginx
CMD ["nginx", "-g", "daemon off;"]