import csv
import re
from urllib import urlopen
import urllib2
import json
from time import sleep

#55.9567507, -3.16942
#55.9083639, -3.1264931 no postcode

# gets a json object from a url
def get_json_object(url):
	data = urllib2.urlopen(url)
	j = json.load(data)
	return j

# get the street name from a given lat-long
def getStreetAddress((lat, lng)):
	lat = str(lat)
	lng = str(lng)
	url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat + "," + lng + "&sensor=false"
	json = get_json_object(url)
	street_name = json['results'][0]['address_components']
	street_name = filterComponent(street_name, ['route'])[0]['long_name']
	postcode = getPostcode(json)
	if postcode == None:
		print street_name
		postcode = "fFAILFAILFAILFAIL"
	return [street_name, postcode]

def getLatLng(address):
	address = re.sub(r"\s+", '+', address)
	url = "http://maps.googleapis.com/maps/api/geocode/json?address="+address+",+edinburgh&sensor=false"
	json = get_json_object(url)
	latlng = json['results'][0]['geometry']['location']	
	return (latlng['lat'], latlng['lng'])

# get the postcode from a provided lat, lng json
def getPostcode(json):	
	postcode = findPostcode(json)
	return postcode

# first level is a dictionary, get results
# second is a list
# third is a dictionary of components
# fouth is a list of dictionarys with component properties.

def findPostcode(json):
	json = json['results']
	object_types = ["postal_code", "street_address"]
	# returns a dictionary of components
	objects = [x for x in json if len(set(x['types']).intersection(object_types))]

	for components in objects:
		for component in components:
			if component == "address_components":
				#print "component ", component
				properties = components[component]
				geonames = filterComponent(properties, ["postal_code"])	
				geonames = [x for x in geonames]	
				for geoname in geonames:
					postcode = geoname['long_name']
					#print "Geonames", geoname
					if 'EH' in postcode:
						return postcode
		
		

def filterComponent(data, types):
	geonames = filter(lambda x: x['types'] == types, data)
	return geonames

# parses in a file with addresses and saves in a csv with the lattitude points.
def parse_addresses(fileload, filesave, addressIndex):
	primaryschool = csv.reader(open(fileload, "rU"))

	file = open(filesave, "wb")
	fileWriter = csv.writer(file , delimiter=',',quotechar='|', 	quoting=csv.QUOTE_MINIMAL)
	for row in primaryschool:
		address = row[addressIndex]
		print address

		if address == "": #remove first blank line
			continue

		if "Add" in address:
			fileWriter.writerow(row + ["LATT", "LNG"])
			continue
			

		point = getLatLng(address)
		street_name = getStreetAddress(point)
		fileWriter.writerow(street_name + [point[0], point[1]])
		print point, street_name
		sleep(0.3)
	

# parses specific schools file. Takes out all information but roll, address and aggregates latt,lng
def parse_schools():
	myfilepath = "edinburgh-primary-schools.csv"
	primaryschool = csv.reader(open(myfilepath))

	file = open("test.csv", "wb")
	fileWriter = csv.writer(file , delimiter=',',quotechar='|', 	quoting=csv.QUOTE_MINIMAL)


	for row in primaryschool:
		postcode = row[3]
		roll = row[5]
		address = row[1]

		if postcode == "": # make the first line blank
			continue

		if "Add" in address:
			fileWriter.writerow(row + ["LATT", "LNG"])
			continue
			

		point = getLatLng(address)
		street_name = getStreetAddress(point)
		print point, street_name
		fileWriter.writerow([postcode, roll, address, point[0], point[1]])
		sleep(0.4)


def main():
	print "Run parse_addresses with the file to load, file to save and index of the address. Else runs parse_schools"
	#parse_schools()
	parse_addresses("streetlatlng.csv", "streetpostcode.csv", 0)


if __name__ == "__main__":
    main()
	
