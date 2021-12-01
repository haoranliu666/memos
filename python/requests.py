import requests

#https://stackoverflow.com/questions/23651947/python-requests-requests-exceptions-toomanyredirects-exceeded-30-redirects

url = 'baidu.com'

#type about:version in your browser
headers = {
    'User-Agent':'xxxx'
}

r = requests.get(url, headers = headers)
