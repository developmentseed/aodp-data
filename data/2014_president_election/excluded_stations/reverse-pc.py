import csv, codecs

def unicode_csv_reader(utf8_data, dialect=csv.excel, **kwargs):
    csv_reader = csv.reader(utf8_data, dialect=dialect, **kwargs)
    for row in csv_reader:
    	#Make sure to read in unicode
        yield [unicode(cell, 'utf-8') for cell in row]

#File from tabula, header has to be parsed separately and added manually
filename = 'tabula.csv'
reader = unicode_csv_reader(open(filename))
temp = codecs.open("excluded_ps.csv", "w", "utf-8-sig")
line_num = 0
for row in reader:
	#Rows consist of numbers and Dari, so only flip certain fields
	s =  ( row[4].strip() + "," +
	row[3][::-1].strip() + "," +
	row[2].strip() + "," +
	row[1][::-1].strip() + "," +
	row[0].strip())
	temp.write(s+'\n');
	line_num+=1
temp.close();
