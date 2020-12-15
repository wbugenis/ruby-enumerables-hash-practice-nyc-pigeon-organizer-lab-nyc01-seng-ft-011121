def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each{ |quality, descriptor|
    puts "quality: #{quality}, descriptor: #{descriptor}"
    
    descriptor.each{ |description, name|
      puts "description: #{description}, name: #{name}"
      name.each{ |pigeon|
        puts "in name.each loop, quality: #{quality}"
        if pigeon_list.any{ |listed_pigeons| listed_pigeons == pigeon}
          pigeon_list[pigeon] = 
            { color: [],
              gender: [],
              lives: []
            }
            puts "created new pigeon #{pigeon}"
        end
        pigeon_list[pigeon][quality] << description
        
      }
    }
  }
end

