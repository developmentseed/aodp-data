import csv, codecs

def unicode_csv_reader(utf8_data, dialect=csv.excel, **kwargs):
    csv_reader = csv.reader(utf8_data, dialect=dialect, **kwargs)
    for row in csv_reader:
    	#Make sure to read in unicode
        yield [unicode(cell, 'utf-8') for cell in row]

#File from tabula, header has to be parsed separately and added manually
filename = 'tabula.csv'
reader = unicode_csv_reader(open(filename))
temp = codecs.open("closed_pc.csv", "w", "utf-8-sig")
line_num = 0
for row in reader:
	#First flip all the words in the header 
	if line_num == 0:
		s = ""
		s =  ( row[7][::-1].strip() + "," + 
	 	row[6][::-1].strip() + "," + 
	 	row[5][::-1].strip() + "," + 
	 	row[4][::-1].strip() + "," + 
	 	row[3][::-1].strip() + "," + 
	 	row[2][::-1].strip() + "," + 
	 	row[1][::-1].strip() + "," + 
	 	row[0][::-1].strip())
	else :
		#Rows consist of numbers and Dari, so only flip certain fields
		s =  ( row[7].strip() + "," + 
	 	row[6][::-1].strip() + "," + 
	 	row[5][::-1].strip() + "," + 
	 	row[4][::-1].strip() + "," + 
	 	row[3][::-1].strip() + "," + 
	 	row[2].strip() + "," + 
	 	row[1].strip() + "," + 
	 	row[0].strip())
	temp.write(s+'\n');
	line_num+=1
temp.close();
