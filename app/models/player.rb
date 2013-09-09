class Player < ActiveRecord::Base
  has_many :strokes
  accepts_nested_attributes_for :strokes
  validates_presence_of :name
end
