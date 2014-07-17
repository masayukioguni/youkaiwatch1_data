require 'nokogiri'

file = File.open(ARGV[0])
doc = Nokogiri::HTML.parse(file, nil, 'UTF-8')

doc.xpath('//tr').each do |node|
  row = node.text.split("\n")
  if row.length != 7
  	p row
  	next 
  end

  no = row[1].strip
  name = row[2].strip
  rank = row[3].strip
  place = row[4].strip
  food = row[5].strip
  etc = row[6].strip
  
  puts "#{no},#{name},#{rank},#{place},#{food},#{etc}" 
end

