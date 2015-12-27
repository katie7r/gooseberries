# == Schema Information
#
# Table name: recipes
#
#  id                 :integer          not null, primary key
#  name               :string           default("f")
#  content            :text             default("")
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class Recipe < ActiveRecord::Base
  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
