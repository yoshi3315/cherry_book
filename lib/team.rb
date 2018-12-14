# frozen_string_literal: true

require './lib/deep_freezable'

class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(%w[japan US India])
end
