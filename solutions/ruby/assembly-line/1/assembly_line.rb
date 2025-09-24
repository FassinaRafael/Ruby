class AssemblyLine
  CARS_PER_HOUR = 221
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed < 5
      CARS_PER_HOUR * @speed
    elsif @speed >= 5 && @speed < 9
      CARS_PER_HOUR * @speed * 0.9
    elsif @speed == 9
      CARS_PER_HOUR * @speed * 0.8
    else 
      CARS_PER_HOUR * @speed * 0.77
    end
  end

  def working_items_per_minute
    if @speed < 5
      items = (CARS_PER_HOUR * @speed) / 60
      items.floor
    elsif @speed >= 5 && @speed < 9
      items = (CARS_PER_HOUR * @speed * 0.9) / 60
      items.floor
    elsif @speed == 9
      items = (CARS_PER_HOUR * @speed * 0.8) / 60
      items.floor
    else 
      items = (CARS_PER_HOUR * @speed * 0.77) / 60
      items.floor
    end
  end
end
