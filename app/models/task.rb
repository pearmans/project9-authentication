class Task < ActiveRecord::Base
	validates_presence_of :name, message: "Name is required"
	validate :not_past_date

	def not_past_date
	  if self.days.past?
	    errors.add(:days, 'Date cannot be in the past')
	  end
	end
end