class Wine < ActiveRecord::Base

VARIETALS = [ "merlot" ,  "chianti" , "barbera" , "chardonnay", "dolcetto"]
validates :name, :year, :country, :varietal, presence: true
	validates :year, 
			   numericality: { only_integer: true, greater_than_or_equal_to: 0 }, 
			   unless: "year.blank?"
	validates :varietal, 
			  inclusion: %w(merlot chianti barbera chardonnay dolcetto ) ,
			if: "varietal.present?"
				
	has_many :log_entries, dependent: :destroy

	def average_rating
  		if log_entries.loaded?
    		log_entries.map(&:rating).compact.average
  		else
    		log_entries.average(:rating)
  		end
	end
	
end
