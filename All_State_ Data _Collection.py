import requests
from requests.auth import HTTPBasicAuth
from os import replace

k= [ 'AK', 'AL', 'AR', 'CT', 'DC', 'DE', 'FL', 'GA',
           'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME',
           'MI', 'MN', 'MO', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ',
           'NY', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX',
            'VA', 'VT', 'WA', 'WI', 'WV', 'WY']
for j in range (0,50):
  for i in range (100,200):
    BB = 'https://www.ncei.noaa.gov/access/monitoring/climate-at-a-glance/county/time-series/#-001/tavg/all/9/1895-2023.csv'
    i = str(i)
    BB = BB.replace('001',i)
    j = int(j)
    L =BB.replace('#', k[j])
    print (L)
    response = requests.get(L)
    if response.ok:
      url = response
      ext = '.csv'

# ext = '.loc'
      result = str(response)
    #print (result)
      f_name = L[83:89]
      print (f_name)
# f_name = file[-12:-4]
    #r = requests.get(str(response))
    #print (r)

    # r = requests.get(file, auth=HTTPBasicAuth('username', 'password'))
      Z = f'FILE PATHE NAME/+/{f_name}.csv'

  #k = int(k[i])
      Z=Z.replace('+', k[j])
      print (Z)
      with open(Z, 'wb') as f:
        f.write(response.content)
        print (response.content)
    else:
      continue
