# == Schema Information
#
# Table name: tournaments
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  city       :string(255)
#  state      :string(255)
#  start_date :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tournament < ApplicationRecord
  has_many :teams
  has_many :events
  has_many :assessments
end
