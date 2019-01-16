require 'normal'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      case item.name
      when "item"
        update_normal(item)
      when "Aged Brie"
        update_brie(item)
      when "Sulfuras, Hand of Ragnaros"
        update_sulphuras(item)
      when "Backstage passes to a TAFKAL80ETC concert"
        update_backstage(item)
      end
    end
  end

  def update_normal(item)
    item = Normal.new(item)
    item.update
  end

  def update_brie(item)
    item.sell_in = item.sell_in - 1
    return if item.quality >= 50
    item.quality = item.quality + 1
    return if item.quality >= 50
    item.quality = item.quality + 1 if item.sell_in < 0
  end

  def update_sulphuras(item)
  end

  def update_backstage(item)
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
