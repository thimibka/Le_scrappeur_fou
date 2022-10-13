require_relative ('../lib/Dark_Trader')

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

describe 'Testing scraping with Crypto name' do
  it 'should return not nil if name-crypto is returned' do
    expect(liaison(page)).to_not be_nil
  end
end

