Geocoder.configure(
  lookup: :bing,
  api_key: ENV["BING_API_KEY"],
  cache: Redis.new(url: ENV.fetch("REDIS_URL", 'redis://localhost:6379')),
  timeout: 5
)