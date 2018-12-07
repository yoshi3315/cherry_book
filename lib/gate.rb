# frozen_string_literal: true

class Gate
  STATIONS = %i[umeda juso mikuni].freeze
  FARES = [150, 190].freeze

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
    from = STATIONS.index(ticket.stamped_at.to_sym)
    to = STATIONS.index(@name.to_sym)
    distance = (to - from).abs
    FARES[distance - 1]
  end
end
