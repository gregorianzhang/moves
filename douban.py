#-*- coding:utf-8 -*-
import json
import requests
import MySQLdb
#people = "http://api.douban.com/v2/movie/celebrity/1274919?alt= \
#                 json&apikey=0df993c66c0c636e29ecbb5344252a4a"

db = MySQLdb.connect("127.0.0.1" ,'root' ,'root' ,'moves' ,charset='utf8')
cursor = db.cursor()

def get_name_id(listx):
    if listx == []:
        return ""
    else:
        tmp_list = []
        for x in listx:
            try:
		namex = x['name']
	    except:
		namex = ""
            try:
		idx = x['id']
	    except:
		idx = ""
	    tmp =""
	    print "namex %s idx %s" % (namex,idx)
	    print "namex type %s idx type %s" % (type(namex),type(idx))
            tmp = namex + "-" + str(idx)
            tmp_list.append(tmp)
        return '='.join(tmp_list)
        
ids=[]
for x in xrange(10000800,30000000):
    #moveid = "24751756"
    moveid = str(x)
    url = "http://api.douban.com/v2/movie/subject/" + moveid + \
                      "?alt=json&apikey=0df993c66c0c636e29ecbb5344252a4a"
    
    add_moves = ("INSERT INTO moves_db "
                        "(doubanid,title,images,year,directors,writers,casts, \
                         countries,languages,pubdates,durations,aka, \
                         tag,genres,summary,rating) "
                        "VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)" )
    
    html = requests.get(url)
    if html.status_code == 200:
        print html.encoding
	html.encodinh='utf-8'

        data = json.loads(html.text)
        doubanid = data['id']
        title = data['title']
        rating = data['rating']['average']
        images = data['images']['large']
        year = data['year']
        directors = get_name_id(data['directors'])
        writers = get_name_id(data['writers'])
        casts = get_name_id(data['casts'])
        countries = ''.join(data['countries'])
        languages = ''.join(data['languages'])
        pubdates = '='.join(data['pubdates'])
        durations = '='.join(data['durations'])
        aka = '='.join(data['durations'])
        tag = '='.join(data['tags'])
        genres = '='.join(data['genres'])
        summary = data['summary']
        print doubanid,title,directors,rating,year,casts,tag,summary,images
        data=(doubanid,title,images,year,directors,writers,casts,countries,languages,pubdates,durations,aka,tag,genres,summary,rating)
        print add_moves % data
        cursor.execute(add_moves,data)
        db.commit()

    else:
	print html.text


db.close()
