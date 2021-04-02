class Deal < ApplicationRecord
	has_many :carts
	has_many :orders
	enum status: { scheduled: 1, active: 2, inactive: 3}

end
