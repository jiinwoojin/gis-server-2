# gis-server-2
mapserver + httpd

# 실행 script
docker create -it -p 0.0.0.0:13000:80 -v /data/jiserver:/data/jiserver --name gis-server-2 jiinwoojin/gis-server-2

# save script
docker save jiinwoojin/gis-server-2 > gis-server-2.tar

# load script
docker load < gis-server-2.tar 

# TEST
http://localhost:13000/mapserver/cgi-bin/mapserv?map=/data/jiserver/data_dir/mapserver/world_k2/world_k2.map&SERVICE=WMS&REQUEST=GetCapabilities&VERSION=1.3.0