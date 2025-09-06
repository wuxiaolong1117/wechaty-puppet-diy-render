FROM wechaty/wechaty:0.56

# 只开详细日志，方便排错
ENV WECHATY_LOG=verbose

# 不覆盖官方 ENTRYPOINT/CMD
# Render 会注入 $PORT，我们只需要在启动时把它传给镜像



