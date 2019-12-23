class Member < ApplicationRecord
	belongs_to :mystream
	belongs_to :devison
	 mount_uploader :image, ImageUploader
end
