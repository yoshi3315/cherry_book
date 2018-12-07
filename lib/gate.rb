# frozen_string_literal: true

class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]
  
  def initialize(name)
    @name = name
  end
  
  def enter(ticket)
    ticket.stamp(@name)
  end
  
  def exit(ticket)
    calculated_fare = calc_fare(ticket)
    calculated_fare <= ticket.fare
  end
  
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = (to - from).abs
    FARES[distance - 1]
  end
end
