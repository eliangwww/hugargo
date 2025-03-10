# 使用 Node.js 官方镜像作为基础镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package.json ./

# 安装依赖
RUN npm install

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 7860

# 设置环境变量
ENV UUID=986e0d08-b275-4dd3-9e75-f3094b36fa2a
ENV NEZHA_SERVER=nz.abc.cn
ENV NEZHA_PORT=5555
ENV NEZHA_KEY=
ENV ARGO_DOMAIN=
ENV ARGO_AUTH=
ENV CFIP=government.se
ENV NAME=hug

# 启动应用
CMD ["npm", "start"]
