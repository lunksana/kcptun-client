# kcptun-client
## 1.介绍
这是一个基于官方kcptun构建的客户端容器镜像。
## 2.版本
当前KCPTUN版本：v20161118
## 3.版权说明
kcptun执行程序抓取于[xtaci/kcptun](https://github.com/xtaci/kcptun)
# 使用方法
## 1.前期准备
1. 抓取容器：docker pull lunksana/kcptun-client
2. 挂载容器/root目录至宿主机任意目录，请确保该目录有写入权限
3. 映射容器端口12948至宿主机任意端口
## 2.运行命令
docker run --name mykcptun-client -v /path/json:/root -p 1083:12948 -d lunksana/kcptun-client:latest
## 3.修改配置文件
容器首次运行后会自动在挂载的目录下生成一个client.json文件，请根据kcptun服务端的配置自行调整（请不要修改监听端口12948）
## 4.变量说明
|      变量名      |      默认值      |      说明      |
|-----------------|------------------|---------------|
|localaddr        |:12948            |监听端口        |
|remoteaddr       |Server_address:Server_port|kcp服务器地址：服务器端口|
|key              |passwd            |密钥            |
|crypt            |salsa20           |加密方式        |
|mode             |fast2             |加速模式        |
|conn             |1                 |                |
|autoexpire       |60                |                |
|mtu              |1350              |                |
|sndwnd           |1024              |                |
|rcvwnd           |1024              |                |
|datashard        |100               |                |
|parityshard      |3                 |                |
|dscp             |0                 |                |
|nocomp           |true              |是否压缩         |
|acknodelay       |false             |                |
|nodelay          |1                 |                |
|interval         |20                |                |
|resend           |2                 |                |
|nc               |1                 |                |
|sockbuf          |4194304           |                |
|keepalive        |10                |                |
以上变量请根据服务端配置自行调整
## 5.重启容器
重启容器，连接宿主机映射端口享受kcp带给你的快速网络。