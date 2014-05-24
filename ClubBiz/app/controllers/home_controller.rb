class HomeController < ApplicationController
  def index
  	
  	if user_signed_in?
  		@tickets = Ticket.where("user_id = ?", current_user.id)
  	end

  end

  def about
  end
end
