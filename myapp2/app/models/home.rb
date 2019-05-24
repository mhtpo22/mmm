class Home < ActiveRecord::Base
	validates :body, length: { maximum: 140 }
end
