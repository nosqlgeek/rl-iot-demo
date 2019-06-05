# You need to create a user 'polly' with password 'redisredis' first!
## You can also use i.e. ?since=1559743182000 to limit the result set
export ZUSER=polly:redisredis
curl -u $ZUSER http://localhost:8083/ZAutomation/api/v1/notifications | json_pp
