# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"N040F00","system":"readv2"},{"code":"N102.00","system":"readv2"},{"code":"N040D00","system":"readv2"},{"code":"N04y000","system":"readv2"},{"code":"H570.00","system":"readv2"},{"code":"7P20300","system":"readv2"},{"code":"N040500","system":"readv2"},{"code":"N040B00","system":"readv2"},{"code":"N060.11","system":"readv2"},{"code":"N101.00","system":"readv2"},{"code":"M210.11","system":"readv2"},{"code":"N040Q00","system":"readv2"},{"code":"7341CL","system":"readv2"},{"code":"N042100","system":"readv2"},{"code":"N040700","system":"readv2"},{"code":"66HB000","system":"readv2"},{"code":"N040T00","system":"readv2"},{"code":"N040N00","system":"readv2"},{"code":"N00z.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
