# 0x02. Redis basic

  - sudo apt-get -y install redis-server
  - pip3 install redis
  - sed -i "s/bind .*/bind 127.0.0.1/g" /etc/redis/redis.conf


##### Use Redis in a container
service redis-server start