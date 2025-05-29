docker build -t mi-mysql-ubuntu -f Dockerfile.Mysql
docker run -d -p 3306:3306 mi-mysql-ubuntu
#option 2
# docker run -d \
#     --name mi-servidor-mysql \
#     -p 3306:3306 \
#     -e MYSQL_ROOT_PASSWORD=ucu-so-labs \
#     mysql:latest