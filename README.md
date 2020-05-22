# jiin-server-2
mapnik + httpd (mod_tile)

# 실행 스크립트
docker run -it -p 11140:80 -v /etc/localtime:/etc/localtime:ro -v /data/jiapp:/data/jiapp --name jiin-server-2 jiinwoojin/jiin-server-2

docker exec --user {UID}:{GID} jiin-server-2 renderd -f -c /data/jiapp/data_dir/conf/renderd.conf &> /data/jiapp/data_dir/logs/renderd.log &