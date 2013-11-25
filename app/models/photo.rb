# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  photo_file :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Photo < ActiveRecord::Base
  mount_uploader :photo_file, PhotoUploader
end
