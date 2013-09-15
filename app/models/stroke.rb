class Stroke < ActiveRecord::Base
  belongs_to :player
  #validates_presence_of :shot_id
  validates_format_of :link, :with => /((?:https?\:\/\/|www\.)(?:[-a-z0-9]+\.)*[-a-z0-9]+.*)/i
end
