class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      if item.name == "item"
        return update_normal
      end
      if item.name == "Aged Brie"
        return update_brie
      end
      if item.name == "Sulfuras, Hand of Ragnaros"
        return update_sulphuras
      end
      if item.name == "Backstage passes to a TAFKAL80ETC concert"
        return update_backstage
      end
    end
  end

  def update_normal
    if @items[0].quality > 0
      if @items[0].sell_in > 0
        @items[0].quality = @items[0].quality - 1
      else
        @items[0].quality = @items[0].quality - 2
      end
    end
    @items[0].sell_in = @items[0].sell_in - 1
  end

  def update_brie
    if @items[0].quality == 49
      @items[0].quality = @items[0].quality + 1
    end
    if @items[0].quality == 50
      return
    end
    if @items[0].sell_in > 0
      @items[0].quality = @items[0].quality + 1
    else
      @items[0].quality = @items[0].quality + 2
    end
    @items[0].sell_in = @items[0].sell_in - 1
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
