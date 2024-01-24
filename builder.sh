# 构建镜像
docker build -t palserver . --build-arg "HTTPS_PROXY=http://192.168.81.232:7890"
# 删除构件中的临时镜像
docker image prune -f