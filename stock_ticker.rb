require 'httparty'
require 'nokogiri'

response = HTTParty.get('http://finance.yahoo.com/q?s=AAPL')

dom = Nokogiri::HTML(response.body)

my_doc = dom.xpath("//span[@id='yfs_l84_aapl']").first
stock = my_doc.inner_html
puts "$" +stock
