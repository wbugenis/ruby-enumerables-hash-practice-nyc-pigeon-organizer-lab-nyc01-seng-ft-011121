require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each{ |quality, descriptor|
    descriptor.each_with_index{ |description, name, index|
      pigeon_list[name][index] = { description=> [] }
    }
  }
  binding.pry
end
