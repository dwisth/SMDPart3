class Society < ActiveRecord::Base

	has_and_belongs_to_many :events
	# has_many :events

	def self.search(search)
  		search_condition = "%" + search + "%"
  		@societies = find(:all, :conditions => ['name LIKE ? OR description LIKE ?', search_condition, search_condition])
	end

	def self.advSearch(params)
		@societies = Society.all;

		if !params[:name].nil?
			@societies = @societies.where("name LIKE ?", '%' + params[:name] + '%')
		end

		if !params[:description].nil?
			@societies = @societies.where("description LIKE ?", '%' + params[:description] + '%')
		end

		#TODO: Add price ranges.

		if !params[:membershipFee].nil? && !params[:membershipFee].empty?
			@societies = @societies.where("membershipFee = ?",params[:membershipFee])
		end

		#TODO: Add event related searching!

		return @societies
	end

end
