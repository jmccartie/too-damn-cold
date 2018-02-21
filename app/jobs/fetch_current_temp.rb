class FetchCurrentTemp

  def perform(city)

    # Fetch Data
    data = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?lat=#{city.latitude}&lon=#{city.longitude}&units=imperial&APPID=#{ENV['WEATHER_API_KEY']}")

    # Store Data
    city.update_column(:temperature, data["main"]["temp"])
  end

end