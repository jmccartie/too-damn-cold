class SearchController < ApplicationController

  def index
    if params[:origin] && params[:temperature]
      @origin = Geocoder.search(params[:origin]).first
      @results = City.where('temperature >= ?', params[:temperature]).near(@origin.coordinates, params[:distance] || 500).limit(10)
    end
  end

end