class Innovation < ApplicationRecord
	searchkick
	
	has_one_attached :video
	has_one_attached :thumbnail
end
