FROM wechaty/wechaty:latest

ENV WECHATY_LOG=verbose

EXPOSE 8788

CMD ["bash", "-lc", "export WECHATY_PUPPET_SERVER_PORT=${PORT:-8788} && wechaty"]
