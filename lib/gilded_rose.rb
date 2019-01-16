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
        update_normal(item)
      when "Aged Brie"
        update_brie(item)
      when "Sulfuras, Hand of Ragnaros"
        return item
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
    item = Brie.new(item)
    item.update
  end

  def update_backstage(item)
    item = Backstage.new(item)
    item.update
  end

end
