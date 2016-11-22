class Airplane
  attr_reader :type, :wing_loading, :horsepower

  def initialize(type, wing_loading, horsepower)
    @type, @wing_loading, @horsepower = type, wing_loading, horsepower
    @plane_on = false
    @flying = false
  end

  def start
    if @plane_on == false
      puts "Airplane has started."
      @plane_on = true
      return false
    else
      puts "Airplane was already started."
      return true
    end
  end

  def takeoff
    if @plane_on == false
      puts "Airplane is not turned on."
      return false
    else
      @flying = true
      puts "Airplane is now flying."
      return true
    end
  end

  def land
    if @plane_on == false
      puts "Airplane is not turned on."
      return false
    elsif @plane_on == true && @flying == false
      puts "Airplane is not flying."
      return false
    else
      puts "Airplane has now landed."
      @flying = false
      return true
    end
  end
end
