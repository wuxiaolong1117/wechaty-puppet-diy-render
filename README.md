# Wechaty Puppet Service DIY on Render

本仓库演示如何在 Render 上自建一个 Wechaty Puppet Service。

## 部署步骤
1. 将本仓库推到 GitHub。
2. Render 控制台 -> New -> Web Service -> 选择本仓库。
3. Runtime: Docker, Region: Singapore, Branch: main。
4. 环境变量（Environment Variables）：
   - `WECHATY_PUPPET=wechaty-puppet-wechat`
   - `WECHATY_TOKEN=<你的UUID>`
   - `WECHATY_LOG=verbose` (可选)
5. 部署成功后验证：
   ```bash
   curl https://api.chatie.io/v0/hosties/$WECHATY_TOKEN
