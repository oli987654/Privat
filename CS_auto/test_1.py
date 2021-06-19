import requests

params = {'country': 'RU', 'currency': 5, 'appid': 730, 'market_hash_name': 'Falchion%20Case'}
data = requests.get('http://steamcommunity.com/market/pricehistory', params=params)
print(data.text)