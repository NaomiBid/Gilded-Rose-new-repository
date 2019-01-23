require 'normal'
require 'brie'
require 'backstage'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      if item.name == "Sulfuras, Hand of Ragnaros"
        return item
      else
        item.update
      end
    end
  end

end
