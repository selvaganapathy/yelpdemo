class Restaurant < ApplicationRecord
	mount_uploader :image, ImageUploader

	has_many :reviews
	validates :name, :address, :phone, :weblink, :image, presence: true
	validates :phone, format: {with: /\A\(\+\d{2}\) \d{10}\z/, 
		message: "must be in the format (+91) 9876543210"
	}
	validates :phone, format: {with: /\Ahttps?\:\/\/.*\z/, 
		message: "must start with http:// or https://"
	}
end
