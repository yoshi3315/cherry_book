# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require './lib/gate'

class GateTest < Minitest::Test
  def test_gate
    assert Gate.new
  end
end
