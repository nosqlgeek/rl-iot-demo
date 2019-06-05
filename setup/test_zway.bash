# You need to create a user 'polly' with password 'redisredis' first!
export ZUSER=polly:redisredis
curl -u $ZUSER http://localhost:8083/ZAutomation/api/v1/notifications | json_pp
