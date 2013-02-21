import urllib2
import string
import re

postcode = "eh1 2qp"
postcode = string.replace(postcode, " ", "+")

url = "https://citydev-portal.edinburgh.gov.uk/ward/search?postcode=%s&postcode_submit=submit" % postcode
html = urllib2.urlopen(url).read()

regex = re.compile(r"WardA\d\d")
search = regex.search(html)
wardID = int(search.group()[5:])
print wardID


