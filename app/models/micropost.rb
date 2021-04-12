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

class Micropost < ApplicationRecord
  belongs_to :user
end
