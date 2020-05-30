#!/bin/sh
while true;
set -ex
do
    mysql -h $SQL_HOST -u $SQL_USER --password=$SQL_PASS $SQL_DB < script.sql
    sleep 60
done