require 'item'

class Brie < Item

  def update
    @sell_in -= 1
    return if @quality >= 50
    @quality += 1
    return if @quality >= 50
    @quality += 1 if @sell_in < 0
  end

end
