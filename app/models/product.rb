class Product < ApplicationRecord
	enum quantity_in: [:kg,:number]
end
