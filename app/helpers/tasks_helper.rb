module TasksHelper
	def time_hours num
		(num.to_i / 60).to_i
	end

	def time_minutes num
		num.to_i % 60
	end
end
