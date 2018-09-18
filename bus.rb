class Bus

  attr_accessor :passengers
  attr_reader :number, :destination

  def initialize(number, destination, passengers)
    @number = number
    @destination = destination
    @passengers = passengers
  end

  def drive(drive)
    return drive
  end


  def pick_up(person)
    passengers.push(person)
  end

  def pick_up_more(person)

      passengers.push(person)
  end

end
