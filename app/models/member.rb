class Member < ApplicationRecord
	belongs_to :mystream
	 mount_uploader :image, ImageUploader
end
