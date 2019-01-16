class Backstage

  attr_reader :item

  def initialize(item)
    @item = item
  end

  def update
    item.quality = 0 if item.sell_in <= 0
    item.sell_in = item.sell_in - 1
    return if item.quality >= 50
    item.quality = item.quality + 1
    return if item.quality >= 50
    item.quality = item.quality + 1 if item.sell_in < 10
    return if item.quality >= 50
    item.quality = item.quality + 1 if item.sell_in < 5
    item.quality = 0 if item.sell_in <= 0
  end

end
