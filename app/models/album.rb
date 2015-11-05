# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  is_private :boolean
#

class Album < ActiveRecord::Base
	belongs_to :user
	has_many :images
end
