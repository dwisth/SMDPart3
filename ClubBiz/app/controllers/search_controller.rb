class SearchController < ApplicationController
  def societyAdvSearch
  end

  def eventAdvSearch
  end

  def dispResults
  	searchEvents
    searchSocieties
  end

  private
  
  def searchEvents
  	@events = Event.search params[:search]
  end

  def searchSocieties
    @societies = Society.search params[:search]
  end

end
