# == Schema Information
#
# Table name: teams
#
#  id            :bigint           not null, primary key
#  name          :string(255)
#  age_group    :string(255)
#  coach         :string(255)
#  tournament_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Team < ApplicationRecord
  belongs_to :tournament
  has_many :players
end
