import csv


outputFile = open("street_values_seed.txt", "wb")

with open('street_value.csv','rU') as csvfile:
	csvReader = csv.reader(csvfile)
	for row in csvReader:
		date = "Date.strptime(\""+row[0]+"\",\"%d/%m/%y\")"
		rowOutput = "{ recorded: %s, street_id: %s, dog_foul: %s, vandalism: %s, graffiti: %s, weeds: %s, detritus: %s, fly_posting: %s, bin_count: %s, number_overflowing: %s, smoking: %s, drinks: %s, confectionary: %s, fast_food: %s, pedestrian_individual: %s, business: %s, domestic: %s, construction: %s, animal_faeces: %s, other: %s },\n" % (date,row[1],row[2],row[3],row[4],row[5],row[6],row[7],row[8],row[9],row[10],row[11],row[12],row[13],row[14],row[15],row[16],row[17],row[18], row[19])
		outputFile.write(rowOutput)
