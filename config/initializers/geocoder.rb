Geocoder.configure(
  cache: Redis.new(url: ENV["REDIS_URL"] || 'localhost'),
  timeout: 5
)