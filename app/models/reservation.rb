class Reservation < ActiveRecord::Base

  #validates :table, :presence => true,
  #:uniqueness => {:scope => :start, :message => "this table has been busy"}
  validates :table, :presence => true
  validates :start, :presence => true
  validates :end,   :presence => true
  validates :start, :end, overlap: {:message_content => "this table has been busy"}

end
