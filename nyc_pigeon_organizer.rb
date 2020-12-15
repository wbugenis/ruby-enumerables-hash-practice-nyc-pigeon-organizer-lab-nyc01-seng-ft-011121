require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each{ |quality, descriptor|
    puts "quality: #{quality}, descriptor: #{descriptor}"
    
    descriptor.each{ |description, name|
      puts "description: #{description}, name: #{name}"
      name.each{ |pigeon|
        if pigeon_list.any?(pigeon) == false
          puts "pigeon list conditiojnal"
          pigeon_list[name] = {}
        end
      }
    }
  }
  binding.pry
end
