FROM node:18-alpine

# 安装 Wechaty Puppet Service CLI
RUN npm install -g wechaty-puppet-service@latest

ENV WECHATY_LOG=verbose
EXPOSE 8788

# 让服务监听 Render 提供的 $PORT
CMD ["sh", "-lc", "export WECHATY_PUPPET_SERVER_PORT=${PORT:-8788}; wechaty-puppet-service start"]



