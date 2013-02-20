import csv
import re
from urllib import urlopen
import urllib2
import json
from time import sleep

# gets a json object from a url
def get_json_object(url):
	data = urllib2.urlopen(url)
	j = json.load(data)
	return j

# get the street name from a given lat-long
def getStreetName((lat, lng)):
	lat = str(lat)
	lng = str(lng)
	url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat + "," + lng + "&sensor=false"
	json = get_json_object(url)
	street_name = json['results'][0]['address_components'][1]['long_name']
	return street_name

def getLatLng(address):
	address = re.sub(r"\s+", '+', address)
	url = "http://maps.googleapis.com/maps/api/geocode/json?address="+address+",+edinburgh&sensor=false"
	json = get_json_object(url)
	latlng = json['results'][0]['geometry']['location']
	
	return (latlng['lat'], latlng['lng'])

# parses in a file with addresses and saves in a csv with the lattitude points.
def parse_addresses(fileload, filesave, addressIndex):
	primaryschool = csv.reader(open(fileload))

	file = open(filesave, "wb")
	fileWriter = csv.writer(file , delimiter=',',quotechar='|', 	quoting=csv.QUOTE_MINIMAL)
	for row in primaryschool:
		address = row[addressIndex]

		if postcode == "": # make the first line blank
			continue

		if "Add" in address:
			fileWriter.writerow([address,"LANG", "LNG"])
			continue
			

		point = getLatLng(address)
		street_name = getStreetName(point)
		fileWriter.writerow([address, point[0], point[1]])
		print point, street_name
		sleep(0.2)
	

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
			fileWriter.writerow([postcode, roll, address, postcode, postcode])
			continue

		if "Add" in address:
			fileWriter.writerow([postcode, roll, address,"LANG", "LNG"])
			continue
			

		point = getLatLng(address)
		street_name = getStreetName(point)
		print point, street_name
		fileWriter.writerow([postcode, roll, address, point[0], point[1]])
		sleep(0.2)


def main():
	parse_schools()


if __name__ == "__main__":
    main()
	
