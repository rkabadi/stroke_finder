class Shot < ActiveRecord::Base
  has_many :hands
  has_many :grips
  has_many :spins

end
