require 'normal'
require 'brie'
require 'backstage'
require 'sulfuras'
require 'conjured'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each { |item| item.update }
  end

end
