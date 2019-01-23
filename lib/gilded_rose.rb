require 'normal'
require 'brie'
require 'backstage'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      case item.name
      when "item"
        item.update
      when "Aged Brie"
        item.update
      when "Sulfuras, Hand of Ragnaros"
        return item
      when "Backstage passes to a TAFKAL80ETC concert"
        item.update
      end
    end
  end

#  def update_backstage(item)
#    item = Backstage.new(item)
#    item.update
#  end

end
