require 'item'

class Backstage < Item

  def update
    @quality = 0 if @sell_in <= 0
    @sell_in -= 1
    return if @quality >= 50
    @quality += 1
    return if @quality >= 50
    @quality += 1 if @sell_in < 10
    return if @quality >= 50
    @quality += 1 if @sell_in < 5
    @quality = 0 if @sell_in <= 0
  end

end
