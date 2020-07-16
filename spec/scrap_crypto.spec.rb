require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) #la page a scrapper
doc.xpath('//h3/a').each do |node|
	  puts node.text
	end