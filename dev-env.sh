#!/bin/bash
case $1 in
  start)
    /usr/local/sbin/rabbitmq-server -detached
    influxd -config /usr/local/etc/influxdb.conf &
    ;;
  stop)
    rabbitmqctl stop
    killall influxd
    ;;
  *)
    echo "$0 {start|stop}"
esac
