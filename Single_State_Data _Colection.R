import requests
from requests.auth import HTTPBasicAuth
from os import replace
import webbrowser
import os

for i in range (100,120):
  i = str(i)
  BB = 'https://www.ncei.noaa.gov/access/monitoring/climate-at-a-glance/county/time-series/CA-001/tavg/all/9/1895-2023.csv'
  L = BB.replace('001', i)
  print (L)
  response = requests.get(L)

  if response.ok:
    url = response
    ext = '.csv'
# url = 'http://wwlln.net/hostdata//'
# ext = '.loc'
    result = str(response)
    #print (result)
    f_name = L[83:89]
    print (f_name)
# f_name = file[-12:-4]
    #r = requests.get(str(response))
    #print (r)
    # r = requests.get(file, auth=HTTPBasicAuth('username', 'password'))
    with open(f'/{f_name}.csv', 'wb') as f:
      f.write(response.content)
      print (response.content)
  else:
      continue
