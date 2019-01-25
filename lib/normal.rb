require 'item'

class Normal < Item

  def update
    update_sell_in
    return if @quality = 0
    update_quality
  end

  def update_sell_in
    @sell_in -= 1
  end

  def update_quality
    @quality -= 1
    @quality -= 1 if @sell_in <= 0
  end

end
