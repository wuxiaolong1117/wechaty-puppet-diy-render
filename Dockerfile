FROM node:18-alpine

# 多包全局安装，保证至少有一个 CLI
RUN npm install -g \
    wechaty-puppet-service@latest \
    wechaty-puppet-service-cli@latest \
    @wechaty/puppet-service@latest

ENV WECHATY_LOG=verbose
EXPOSE 8788

# 运行时探测可执行名并启动
CMD sh -lc 'set -e; \
  for c in wechaty-puppet-service wechaty-puppet-service-cli wps; do \
    if command -v "$c" >/dev/null 2>&1; then \
      echo "Using CLI: $c"; \
      exec "$c" start --host 0.0.0.0 --port "${PORT:-8788}"; \
    fi; \
  done; \
  echo "No puppet-service CLI found in PATH" >&2; exit 127'



