require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) #la page a scrapper


 
crypto_symbols = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]')
crypto_prices = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')

crypto_array = []

for i in 0..(crypto_symbols.length - 1 )
crypto_array << {crypto_symbols[i].text => crypto_prices[i].text}
		
end
	
print crypto_array



	

