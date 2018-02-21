class SearchController < ApplicationController

  def index
    if params[:origin] && params[:temperature]
      @results = City.where('temperature >= ?', params[:temperature]).near(params[:origin], 500).limit(10)
    end
  end

end