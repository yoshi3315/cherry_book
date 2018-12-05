# frozen_string_literal: true

def to_hex(r, g, b)
  hex = '#'
  [r, g, b].each do |color|
    hex += color.to_s(16).rjust(2, '0')
  end
  hex
end
