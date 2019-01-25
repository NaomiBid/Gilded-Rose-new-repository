require 'item'

class Brie < Item

  def update
    update_sell_in
    update_quality
  end

  def update_sell_in
    @sell_in -= 1
  end

  def update_quality
    return if @quality >= 50
    @quality += 1
    return if @quality >= 50
    @quality += 1 if @sell_in < 0
  end

end
