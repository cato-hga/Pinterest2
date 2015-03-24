# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Board < ActiveRecord::Base
  #ASSOCIATION
  has_many :pins, dependent: :destroy
  belongs_to :user

  #VALIDATIONS
  validates :name, presence: true
end
