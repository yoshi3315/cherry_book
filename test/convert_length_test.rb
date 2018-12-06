# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, 'm', 'in')
  end
end
