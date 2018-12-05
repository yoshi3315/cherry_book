# frozen_string_literal: true

def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, color|
    hex + color.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  [0, 0, 0]
end
