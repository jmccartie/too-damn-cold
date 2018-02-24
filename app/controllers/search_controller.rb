class SearchController < ApplicationController

  def index
    if params[:origin].present? && params[:temperature].present?
      @origin = Geocoder.search(params[:origin]).first
      @results = City.where('temperature >= ?', params[:temperature]).near(@origin.coordinates, params[:distance].presence || 500).limit(10)
    end
  end

end