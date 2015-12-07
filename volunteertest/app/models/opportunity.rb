class Opportunity < ActiveRecord::Base

	belongs_to :organization
	has_many :arrangements

end
