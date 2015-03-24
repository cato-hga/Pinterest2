# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  avatar     :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :boards, dependent: :destroy
  has_many :pins, through: :boards

  validates :name, presence: true
end
