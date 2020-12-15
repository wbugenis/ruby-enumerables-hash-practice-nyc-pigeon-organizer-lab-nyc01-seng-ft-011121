require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each{ |quality, descriptor|
  
    descriptor.each{ |description, name|
      puts "quality: #{quality}, descriptor: #{descriptor}"
      puts "description: #{description}, name: #{name}"
      if pigeon_list[name]
        pigeon_list[name] = { description=> [] }
      end
    }
  }
  binding.pry
end
