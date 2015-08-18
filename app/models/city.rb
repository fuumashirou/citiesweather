class City < ActiveRecord::Base
	scope :ordered, -> { order temp_max: :desc}
end
