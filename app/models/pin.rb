class Pin < ApplicationRecord
	belongs_to :user

	has_attached_file :image, :style =>{:medium => "300*300>", :thumb => "100*100>"}, :default_url =>"/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


end
