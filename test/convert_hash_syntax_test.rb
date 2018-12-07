# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require './lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    assert_equal '{}', convert_hash_syntax('{}')
  end
end
