import pdb
import csv

csvReader = None

def getStreets():
	streets = []
	with open('streetDataCorrectWards.csv','rU') as csvfile:
		csvReader = csv.reader(csvfile)
		for row in csvReader:
			streetID = row[0]
			streetName = row[1]
			streets.append([streetName, streetID])
	return streets

def getStreetValues():
	streetValues = []
	with open('street_values_data.csv','rU') as csvfile:
		csvReader = csv.reader(csvfile)
		for row in csvReader:
			streetValues.append(row)
	return streetValues
	
def getIDForStreetName(name):
	global streets
	for [streetName, streetID] in streets:
		if name == streetName:
			return streetID

streets = getStreets()
streetValues = getStreetValues()

outputFile = open("treet_values_data_with_IDs.csv", "wb")
fileWriter = csv.writer(outputFile , delimiter=',',quotechar='|', quoting=csv.QUOTE_MINIMAL)

for streetValueSet in streetValues:
	streetName = streetValueSet[1]
	streetID = getIDForStreetName(streetName)
	if (streetID):
		row = [streetValueSet[0]] + [streetID] + streetValueSet[2:]
		fileWriter.writerow(row)

print "Done!"
