class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      case item.name
      when "item"
        update_normal
      when "Aged Brie"
        update_brie
      when "Sulfuras, Hand of Ragnaros"
        update_sulphuras
      when "Backstage passes to a TAFKAL80ETC concert"
        update_backstage
      end
    end
  end

  def update_normal
    @items[0].sell_in = @items[0].sell_in - 1
    return if @items[0].quality = 0
    @items[0].quality = @items[0].quality - 1
    @items[0].quality = @items[0].quality - 1 if @items[0].sell_in <= 0
  end

  def update_brie
    @items[0].sell_in = @items[0].sell_in - 1
    return if @items[0].quality >= 50
    @items[0].quality = @items[0].quality + 1
    return if @items[0].quality >= 50
    @items[0].quality = @items[0].quality + 1 if @items[0].sell_in < 0
  end

  def update_sulphuras
  end

  def update_backstage
    if @items[0].sell_in > 10
      if @items[0].quality < 50
        @items[0].quality = @items[0].quality + 1
      end
    elsif @items[0].sell_in < 11 && @items[0].sell_in > 5
      if @items[0].quality == 49
        @items[0].quality = 50
      else
        @items[0].quality = @items[0].quality + 2
      end
    elsif @items[0].sell_in < 6 && @items[0].sell_in > 0
      if @items[0].quality == 48
        @items[0].quality = 50
      else
        @items[0].quality = @items[0].quality + 3
      end
    end
    @items[0].sell_in = @items[0].sell_in - 1
    if @items[0].sell_in <= 0
      @items[0].quality = 0
    end
  end

end
