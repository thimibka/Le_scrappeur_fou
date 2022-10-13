
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

def crypto(link)
  name =[]

  link.xpath('/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[2]/div/a[1]').each do |i| 
    name.push (i.text)
  end
  return name
end

def valeur(link)
  montant =[]
  link.xpath('/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a/span').each do |j|
    montant.push (j.text)
  end
  return montant
end

def liaison(link)
  liaison_crypto = crypto(link)
  liaison_valeur = valeur(link)
  liaison = liaison_crypto.zip(liaison_valeur).to_h
  return liaison
end

puts liaison(page)




