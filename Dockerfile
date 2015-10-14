FROM resin/rpi-raspbian:jessie
MAINTAINER Michael
EXPOSE 6379
ADD bin/* /usr/local/bin/
ADD redis_init_script /etc/init.d/redis_6379
ADD redis.conf /etc/redis/6379.conf
RUN mkdir -p /var/redis/6379
CMD /etc/init.d/redis_6379 start
