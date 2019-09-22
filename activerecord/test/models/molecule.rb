# frozen_string_literal: true

class Molecule < ActiveRecord::Base
  belongs_to :liquid
  has_many :electrons, autosave: true
end
