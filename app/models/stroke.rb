class Stroke < ActiveRecord::Base
  belongs_to :player
  validates_presence_of :shot_id

  #regex from Lucas Caton
  #http://blog.lucascaton.com.br/index.php/2012/04/10/regex-to-match-youtube-urls-using-ruby/
  validates_format_of :link, :with => /(^(http:\/\/)?(www\.)?youtube\.com\/watch\?v=([a-zA-Z0-9_-]*))/i
end
