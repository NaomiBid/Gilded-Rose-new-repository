require 'item'

class Backstage < Item

  def update
    update_sell_in
    update_quality
  end

  def update_sell_in
    @sell_in -= 1
  end

  def update_quality
    @quality = 0 if @sell_in <= 0
    @quality += 1 if @sell_in < 5
    @quality += 1 if @sell_in < 10
    return if @quality >= 50
    @quality += 1
    @quality = 0 if @sell_in <= 0
  end

end
