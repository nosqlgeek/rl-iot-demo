#!/bin/bash
## Environment
HOME=/home/nosqlgeek
cd $HOME

## Installation directory
mkdir $HOME/opt

## Redis
cd $HOME/opt
wget http://download.redis.io/releases/redis-5.0.5.tar.gz
tar -xvf redis-5.0.5.tar.gz
rm redis-5.0.5.tar.gz
cd redis-5.0.5
make
mkdir bin
mkdir log
mv src/redis-server bin/
mv src/redis-cli bin/
cd $HOME

## Time Series Module
cd $HOME/opt
mkdir timeseries
cd timeseries
git clone https://github.com/RedisTimeSeries/RedisTimeSeries.git
cd RedisTimeSeries
git submodule init
git submodule update
cd src/
make all
cd $HOME/opt/timeseries
mkdir bin
mkdir log
mv RedisTimeSeries/src/redistimeseries.so bin/
cd $HOME
