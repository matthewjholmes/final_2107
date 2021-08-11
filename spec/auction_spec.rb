require './lib/item'
require './lib/auction'
require './lib/attendee'
auction = Auction.new
#=> #<Auction:0x00007fbda90f1cc0 @items=[]>

auction.items
#=> []

auction.add_item(item1)
auction.add_item(item2)

auction.items
#=> [#<Item:0x00007fbda98fa1b0 ...>, #<Item:0x00007fbda91874f0 ...>]

auction.item_names
#=> ["Chalkware Piggy Bank", "Bamboo Picture Frame"]
