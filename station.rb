class Station

  attr_accessor  :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrival
    @trains.push(trains)
  end

  def departure
    @trains.delete(trains)
  end

  def show
    @train.each { |trains| puts "#{trains}"}
  end

  def type
    digit = 0
    @trains.each {|trains| digit +=1 puts trains if trains.type == type}
  end

end


