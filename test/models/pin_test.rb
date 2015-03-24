# == Schema Information
#
# Table name: pins
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  board       :string
#  url         :string
#  pin_image   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  board_id    :integer
#

require 'test_helper'

class PinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
