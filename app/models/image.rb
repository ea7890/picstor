# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#

class Image < ActiveRecord::Base
	belongs_to :album
end
