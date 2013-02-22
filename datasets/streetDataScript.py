import csv

rows = csv.reader(open("streetDataCorrectWards.csv", "rU"))
otherRows = csv.reader(open("streetData.csv", "rU"))

file = open("streetDataSave.csv", "wb")
fileWriter = csv.writer(file , delimiter=',',quotechar='|', 	quoting=csv.QUOTE_MINIMAL)

for row in rows:
	address = row[1]
	for otherRow in otherRows:
		address2 = otherRow[0]
		print "Comparing ", address, " and ", address2
		if(address == address2):
			writeRow = row + otherRow[1:]
			fileWriter.writerow(writeRow)
			break
			
		
