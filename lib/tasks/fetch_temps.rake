task :fetch_temps => :environment do

  count = City.count

  City.all.each_with_index do |city, i|
    begin
      FetchCurrentTemp.new.perform(city)

      if i!=0 && i%10 == 0
        puts "\n===> Finished #{i} of #{count} (#{(i.to_f/count.to_f*100).round(2)}%)"
      end

      print "."
      sleep 1.2
    rescue NoMethodError => e
      puts "ERROR: #{city.name}"
      next
    end

  end

end