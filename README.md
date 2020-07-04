# Yapi-基于Docker-compose构建
yapi，docker-compose构建，支持首次安装或者升级代码

### 一、环境要求
- `Docker`
- `Docker-compose`

### 二、构建
- 首次构建(数据库没有初始化): 
    - 运行`docker-compose --env-file first_run.env up --build -d`
- 升级构建(数据库已经存在的情况): 
    - 从github下载yapi要升级的包，并替换yapi.tar.gz
    - 运行`docker-compose up --build -d`
