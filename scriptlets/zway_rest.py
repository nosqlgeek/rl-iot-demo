import requests
import json

HOST="localhost"
PORT=8083
USER="polly"
PASSWD="redisredis"


# Access the notifications API
url = "http://{}:{}@{}:{}/ZAutomation/api/v1/notifications".format(USER, PASSWD, HOST, PORT)
resp = requests.get(url, verify=True)

# Parse the response
if resp.ok:
    r = json.loads(resp.content)
    d = r["data"]
    ts = d["updateTime"]
    ntfs = d["notifications"]

    for n in ntfs:
        if n["type"] == "device-OnOff":
            if n["message"]["dev"].startswith("Fibaro Burglar"):
                if n["message"]["l"] == "on":
                    print("{} : Motion detected!".format(n["timestamp"]))

# Now, jump in front of the sensor and try it again! (Last was 2019-06-05T13:55:59.017Z)

else:
    print("Error: {}".format(resp.status_code))


