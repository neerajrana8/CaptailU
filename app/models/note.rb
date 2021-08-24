# == Schema Information
#
# Table name: notes
#
#  id            :bigint           not null, primary key
#  note          :string(255)
#  user_id       :bigint           not null
#  assessment_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Note < ApplicationRecord
  belongs_to :player
  belongs_to :assessment
end
