class Event < ActiveRecord::Base

	belongs_to :society

	def self.search(search)
  		search_condition = "%" + search + "%"
  		find(:all, :conditions => ['name LIKE ? OR description LIKE ?', search_condition, search_condition])
	end

	def self.advSearch(params)
		@events = Event.all;
		if !params[:name].nil?
			@events = @events.where("name LIKE ?", '%' + params[:name] + '%')
			#@events = find(:all, :conditions => ['name LIKE ?', '%' + params[:name] + '%' ])
		end

		if !params[:location].nil?
			@events = @events.where("location LIKE ?", '%' + params[:location] + '%')
			#@events = find(:all, :conditions => ['name LIKE ?', '%' + params[:name] + '%' ])
		end

		#TODO: Add some logic here to search between date and time ranges.

		if !params[:date].nil?
			@events = @events.where("date LIKE ?", '%' + params[:date] + '%')
		end

		if !params[:startTime].nil?
			@events = @events.where("startTime LIKE ?", '%' + params[:startTime] + '%')
		end

		if !params[:endTime].nil?
			@events = @events.where("endTime LIKE ?", '%' + params[:endTime] + '%')
		end

		if !params[:description].nil?
			@events = @events.where("description LIKE ?", '%' + params[:description] + '%')
		end

		if params[:membersOnly]=='1'
			@events = @events.where("membersOnly = ?",true)
		end

		if params[:nonMembers]=='1'
			@events = @events.where("membersOnly = ?",false)
		end		

		#TODO: Add society related searching!

		return @events
	end

end
