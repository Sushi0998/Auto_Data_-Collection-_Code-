import requests
from requests.auth import HTTPBasicAuth
from os import replace

k= ['ALASKA', 'ALABAMA', 'ARKANSAS', 'AMERICAN SAMOA', 'ARIZONA', 'CALIFORNIA', 'COLORADO', 'CONNECTICUT', 'DISTRICT ', 'OF COLUMBIA', 'DELAWARE', 'FLORIDA', 'GEORGIA', 'GUAM', 'HAWAII', 'IOWA', 'IDAHO', 'ILLINOIS', 'INDIANA', 'KANSAS', 'KENTUCKY', 'LOUISIANA', 'MASSACHUSETTS', 'MARYLAND', 'MAINE', 'MICHIGAN', 'MINNESOTA', 'MISSOURI', 'MISSISSIPPI', 'MONTANA', 'NORTH CAROLINA', 'NORTH DAKOTA', 'NEBRASKA', 'NEW HAMPSHIRE', 'NEW JERSEY', 'NEW MEXICO', 'NEVADA', 'NEW YORK', 'OHIO', 'OKLAHOMA', 'OREGON', 'PENNSYLVANIA', 'PUERTO RICO', 'RHODE ISLAND', 'SOUTH CAROLINA', 'SOUTH DAKOTA', 'TENNESSEE', 'TEXAS', 'UTAH', 'VIRGINIA', 'VIRGIN ISLANDS', 'VERMONT', 'WASHINGTON', 'WISCONSIN', 'WEST VIRGINIA', 'WYOMING']

for i in range (0,65):
  BB = 'https://www.ncdc.noaa.gov/stormevents/csv?eventType=ALL&beginDate_mm=01&beginDate_dd=01&beginDate_yyyy=1950&endDate_mm=11&endDate_dd=02&endDate_yyyy=2023&county=ALL&hailfilter=0.00&tornfilter=0&windfilter=000&sort=DT&submitbutton=Search&statefips=#%2C------'
  i = str(i)
  BB = BB.replace('#',i)
  i = int(i)
  L=BB.replace('------', k[i])
  print (L)
  response = requests.get(L)

  if response.ok:
    url = response
    ext = '.csv'
# url = 'http://wwlln.net/hostdata//'
# ext = '.loc'
    result = str(response)
    #print (result)
    f_name = L[-11:-1]
    print (f_name)
# f_name = file[-12:-4]
    #r = requests.get(str(response))
    #print (r)
    # r = requests.get(file, auth=HTTPBasicAuth('username', 'password'))
    with open(f'FILE PATHE NAME/{f_name}.csv', 'wb') as f:
      f.write(response.content)
      print (response.content)
  else:
      continue
