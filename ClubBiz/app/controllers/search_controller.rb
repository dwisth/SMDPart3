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
    if !params[:generalSearch].nil?
      @events = Event.search params[:generalSearch]
    elsif params[:token] == 'eventAdvSearch'
      @events = Event.advSearch params
    end
  end

  def searchSocieties
    if !params[:generalSearch].nil?
      @societies = Society.search params[:generalSearch]
    elsif params[:token] == 'societyAdvSearch'
      @societies = Society.advSearch params
    end
  end

end
