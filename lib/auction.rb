class Auction

  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map do |item|
      item.name
    end
  end

  def unpopular_items
    unpop_items = []
    @items.each do |item|
      if item.bids == {}
        unpop_items << item
      end
    end
  end

  def potential_revenue
    @items.filter_map do |item|
      item.current_high_bid
    end.sum
  end

  def bidders
    @items.flat_map do |item|
      item.bids.keys.map do |bidder|
        bidder.name
      end
    end.uniq
  end

  def bidder_info
    hash = {}
    @items.flat_map do |item|
      item.bids.keys.map do |bidder|
        hash[bidder] = {budget: bidder.budget, items: []}
        hash[bidder][:items] << item
      end
    end
    hash
  end
end
