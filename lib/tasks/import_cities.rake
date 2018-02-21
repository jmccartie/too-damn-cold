task :import_cities => :environment do

  file = File.read("#{Rails.root}/lib/tasks/cities.json")
  data = JSON.parse(file)

  data.each do |city|
    City.create!({
      name: city['city'],
      state: city['state'],
      latitude: city['latitude'],
      longitude: city['longitude']
    })
    print "."
  end


end