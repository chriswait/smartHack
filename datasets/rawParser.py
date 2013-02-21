import pdb
import csv

csvReader = None

def getRows():
	rows = []
	with open('Raw.csv','rU') as csvfile:
		csvReader = csv.reader(csvfile)
		for row in csvReader:
			rows.append(row)
	return rows

def aggregateRows(rows):
	streets = {}
	for row in rows:
		key = row[0].title()
		# If this street already exists in the dictionary
		if streets.has_key(key):
			streets[key].append(row[1:])
		else:
			streets[key] = [row[1:]]

	averagedStreets = {}

	for key in streets.keys():
		rows = streets[key]
		totals = [0]*19
		for row in rows:
			for i, param in enumerate(row[3:]):
				totals[i] += int(param)
		totals = [total/len(rows) for total in totals]
		averagedStreets[key] = row[0:1] + totals

	csvRows = []
	for key in averagedStreets.keys():
		row = averagedStreets[key]
		csvRows.append([key] + row)

	return csvRows
		
def writeToCSV(streets):
	with open('streetData.csv','wb') as csvfile:
		csvWriter = csv.writer(csvfile)
		for row in streets:
			csvWriter.writerow(row)

			

rows = getRows()[1:]
streets = aggregateRows(rows)
writeToCSV(streets)
