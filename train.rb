class Train

  attr_accessor :speed, :route
  attr_reader :number, :type, :carriages, :current_station, :current_station_id

  def initialize(number, type, carriages)
    @number = number
    @type = type
    @carriages = carriages

    @speed = 0
    @current_station_id = 0
  end

  def increase_speed
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def current_speed
    puts "Текущая скорость: #{@speed}"
  end

  def current_quantity
    puts "Количество вагонов: #{@number}"
  end

  def add_carriages
    @carriages += 1 if @speed == 0
    else
    puts "Остановите поезд, чтобы прицепить вагон!"
  end

  def remove_carriages
    @carriages -= 1 if @speed == 0
    puts "Остановите поезд, чтобы отцепить вагон!"
  end

  def route
    @route = route
    @current_station = @route.stations[0]
  end

  def current_station
    puts "Текущая станция поезда #{@current_station}"
  end

  def next_station
    if @current_station == @route.last
      "Станция #{@current_station} конечная"
    else
      @next_station = @route.index(@current_station).next
      "Следующая станция #{@route.fetch(@next_station)}"
    end
  end

  def move_next_station
    @current_station = @route.fetch(@next_station)
  end

  def prev_station
    if @current_station == @route.first
      "Станция #{@current_station} начальная"
    else
      @prev_index = @route.index(@current_station).prev
      "Предыдущая станция #{@route.fetch(@prev_index)}"
    end
 end

  def move_prev_station
    @current_station = @route.fetch(@prev_index)
  end

end
