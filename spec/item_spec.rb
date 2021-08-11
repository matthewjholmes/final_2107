require './lib/item'
require './lib/auction'
require './lib/attendee'

RSpec.describe Item do
  before(:each) do
    @item1 = Item.new('Chalkware Piggy Bank')
    @item2 = Item.new('Bamboo Picture Frame')
    @item3 = Item.new('Homemade Chocolate Chip Cookies')
    @item4 = Item.new('2 Days Dogsitting')
    @item5 = Item.new('Forever Stamps')
  end

  it 'exists and has attributes' do
    expect(@item1).to be_a(Item)
    expect(@item1.name).to eq("Chalkware Piggy Bank")
    expect(@item1.bids).to eq({})
  end
end
