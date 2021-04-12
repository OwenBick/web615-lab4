# == Schema Information
#
# Table name: microposts
#
#  id         :integer          not null, primary key
#  message    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_microposts_on_user_id  (user_id)
#

require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
