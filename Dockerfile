FROM node:18-alpine

# 仅安装实际存在的 CLI 包：wechaty-puppet-service
RUN npm install -g wechaty-puppet-service@latest

ENV WECHATY_LOG=verbose
EXPOSE 8788

# 显式绑定 Render 的端口，确保对外监听
CMD sh -lc 'set -e; \
  echo "Node: $(node -v)  NPM: $(npm -v)"; \
  command -v wechaty-puppet-service || { echo "wechaty-puppet-service not in PATH"; exit 127; }; \
  exec wechaty-puppet-service start --host 0.0.0.0 --port "${PORT:-8788}"'



