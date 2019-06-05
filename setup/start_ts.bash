#!/bin/bash
HOME=/home/nosqlgeek
export REDIS_BIN=$HOME/opt/redis-5.0.5/bin
export REDIS_TS_BIN=$HOME/opt/timeseries/bin
$REDIS_BIN/redis-server --port 7777 --loadmodule $REDIS_TS_BIN/redistimeseries.so
