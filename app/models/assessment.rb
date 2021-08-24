# == Schema Information
#
# Table name: assessments
#
#  id             :bigint           not null, primary key
#  rating         :integer
#  assesment_type :string(255)      default("event")
#  user_id        :bigint           not null
#  tournament_id  :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Assessment < ApplicationRecord
  belongs_to :tournament
  belongs_to :player
  has_many :notes

end
