require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each{ |quality, descriptor|
    puts "quality: #{quality}, descriptor: #{descriptor}"
    
    descriptor.each{ |description, name|
      puts "description: #{description}, name: #{name}"
      name.each{ |pigeon|
        if pigeon_list.any?(pigeon) == false
          pigeon_list[pigeon] = 
            { color: [],
              gender: [],
              lives: []
            }
        end
        pigeon_list[pigeon][quality] << description.to_s
      }
    }
  }
  binding.pry
end
