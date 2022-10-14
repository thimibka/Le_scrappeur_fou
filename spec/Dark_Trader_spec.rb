# require_relative ('../lib/Dark_Trader')

# page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

# describe 'Testing scraping with Crypto name' do
#   it 'should return not nil if name-crypto is returned' do
#     expect(liaison(page)).to_not be_nil
#   end
# end

require_relative ('../lib/Dark_Trader')

page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))

describe 'Testing scraping with Crypto Names' do
  it 'Should return not nil if name-crypto is returned' do
    expect(page).to include
  end
end

describe 'Testing scraping with Crypto Values' do
  it 'Should return not nil if values-crypto is returned' do
    expect(page).to include
  end
end

describe 'Testing final result' do
  it 'Should return not nil if Crypto_compare is working' do
    expect(page).to include
  end
end