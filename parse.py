import json 
import csv
import os

data 	  = json.load(open('db.json'))

apartments = data['houses'][0]['apartments']

count       = 0
part_key    = apartments[0].keys()
val_key     = list(part_key)[1:]
inner_key   = apartments[0][list(part_key)[1]]['measurements'][0].keys()
os.mkdir('data')
for apartment in apartments:
  people    = int(apartment['people'])
  os.mkdir('./data/%d_%d' % (count, people))
  for key in val_key:
    file      = open('./data/%d_%d/%s.csv' % (count, people, key), 'w')
    writer    = csv.writer(file)
    header    = inner_key
    writer.writerow(header)
    measure   = apartment[key]['measurements']
    for value in measure:
      row   = []
      for head in header:
        row.append(value[head])
      writer.writerow(row)
    file.close()
  count += 1

	