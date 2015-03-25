# == Schema Information
#
# Table name: pins
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  url         :string
#  pin_image   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  board_id    :integer
#

class Pin < ActiveRecord::Base
  #ASSOCIATIONS
  belongs_to :board
  belongs_to :user

  #VALIDATIONS
  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :pin_image, presence: true

  mount_uploader :pin_image, PinImageUploader


end
