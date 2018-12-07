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
    true
  end
  
  def clac_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
