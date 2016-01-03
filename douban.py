#-*- coding:utf-8 -*-
import json
import requests

moveid = "24751756"
url = "http://api.douban.com/v2/movie/subject/"+moveid+"?alt=json&apikey=0df993c66c0c636e29ecbb5344252a4a"

#print url
html = requests.get(url)
#print html.text
data = json.loads(html.text)

title = data['title']
rating = data['rating']['average']
writes = data['writers'][0]['name']
genres = data['genres']
summary = data['summary']
print title,rating,writes,genres,summary

