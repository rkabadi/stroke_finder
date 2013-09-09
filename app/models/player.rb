class Player < ActiveRecord::Base
  has_many :strokes
  accepts_nested_attributes_for :strokes
end
