def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each{ |quality, descriptor|
    descriptor.each{ |description, name|
      name.each{ |pigeon|
        if !pigeon_list[pigeon]
          pigeon_list[pigeon] = {}
        end
        if !pigeon_list[pigeon][quality]
          pigeon_list[pigeon][quality] = []
        end
        pigeon_list[pigeon][quality] << description.to_s
      }
    }
  }
  
  pigeon_list
end

