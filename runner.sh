# 创建存储卷
docker volume create palserver
# 启动服务
docker run -d --name palserver -p 8211:8211/udp -p 27015:27015/udp -v palserver:/palworld/ -e PLAYERS=16 -e PORT=8211 -e PUID=1000 -e PGID=1000 -e COMMUNITY=false --restart unless-stopped palserver