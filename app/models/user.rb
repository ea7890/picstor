# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string
#

class User < ActiveRecord::Base
	has_secure_password
	has_many :albums
	has_many :images, through: :albums
end
