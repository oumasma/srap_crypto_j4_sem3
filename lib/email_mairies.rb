require 'rubygems'
require 'nokogiri'
require 'open-uri'

#def get_townhall_email(townhall_url)   
page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
townhall_email = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text

#end 
  puts townhall_email

#def get_townhall_urls
	page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
townhall_list = page.xpath('//a[@class="lientxt"]')
url = townhall_list.search('a[href]').select{ |n| n['href'][/.html$/] }.map{ |n| n['href'] }

	print url
#end