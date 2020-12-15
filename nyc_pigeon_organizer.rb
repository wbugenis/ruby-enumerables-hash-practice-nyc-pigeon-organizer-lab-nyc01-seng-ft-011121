require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each{ |quality, descriptor|
    descriptor.each{ |description, name|
      if pigeon_list[name] == false
        pigeon_list[name] = { description=> [] }
      end
    }
  }
  binding.pry
end
