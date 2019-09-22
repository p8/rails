# frozen_string_literal: true

class ShipPart < ActiveRecord::Base
  belongs_to :ship, autosave: true
  has_many :trinkets, class_name: "Treasure", as: :looter, autosave: true
  accepts_nested_attributes_for :trinkets, allow_destroy: true
  accepts_nested_attributes_for :ship

  validates_presence_of :name
end
