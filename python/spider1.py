# -*- coding: utf-8 -*-
import requests

print(requests)
res = requests.get("https://www.baidu.com")
print(dir(res))
res.encoding = 'utf-8'
print(res.text)
