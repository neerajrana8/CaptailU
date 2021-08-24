# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  type            :string(255)
#
class Player < User
  has_many :assessments
  has_many :notes
  belongs_to :team
end
