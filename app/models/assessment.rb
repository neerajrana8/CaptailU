class Assessment < ApplicationRecord
  belongs_to :tournament
  belongs_to :player
  has_many :notes

end
