# frozen_string_literal: true

class Guitar < ActiveRecord::Base
  has_many :tuning_pegs, index_errors: true
end
