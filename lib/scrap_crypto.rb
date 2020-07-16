require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) #la page a scrapper


 
crypto_symbols = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]')
crypto_prices = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')

my_hash = {}

for i in 0..(crypto_symbols.length - 1 )
my_hash[crypto_symbols[i].text] = crypto_prices[i].text
		
end
	
crypto_array = []

my_hash.each do |hash|
	crypto_array.push(hash)
end
print crypto_array



	

