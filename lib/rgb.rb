# frozen_string_literal: true

def to_hex(red, green, blue)
  [red, green, blue].inject('#') do |hex, color|
    hex + color.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end
