require 'open-uri'
require 'nokogiri'

url = "http://store.lawson.co.jp/store/243168/" # 対象店舗のURL
doc = Nokogiri::HTML(open(url)) # urlの読み込み

p doc.css('h3#pr_store').inner_text # 店舗名の出力
p doc.css('td#pr_address').inner_text # 住所の出力