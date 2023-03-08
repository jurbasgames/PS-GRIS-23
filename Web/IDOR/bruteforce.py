from time import sleep
import requests

for number in range(1, 1000):
    res = requests.get(f'http://34.95.239.56:9986/?id={number}')
    print(f'{number}/1000')
    if not ("Warning" in res.text):
        print(res.text)
        break
    sleep(0.5)
