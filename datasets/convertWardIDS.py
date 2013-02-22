import csv

rows = csv.reader(open("streetTableData.csv", "rU"))

file = open("streetDataCorrectWards.csv", "wb")
fileWriter = csv.writer(file , delimiter=',',quotechar='|', 	quoting=csv.QUOTE_MINIMAL)
wardIds = [14, 10, 9, 7, 4, 15, 13, 5, 2, 3, 6, 12, 8, 1, 17, 16, 11]

for row in rows:
	ward = int(row[2])
	row[2] = str(wardIds[ward - 1])
	print "Replacing ", ward, "with ", row[2]
	fileWriter.writerow(row)
	
