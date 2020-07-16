require 'rubygems'
require 'nokogiri'
require 'open-uri'

#def    
page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
all_deputy = page.xpath('//ul/li/a[contains(@href,"deputes")]/@href')

#end 
  puts all_deputy