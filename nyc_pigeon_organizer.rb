pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
pigeon_list = {}
  data.each do |pigeon_name, pigeon_info|
    pigeon_info.each do |category, details|
      details.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  x = pigeon_list.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          pigeon_list[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          pigeon_list[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          pigeon_list[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return pigeon_list 
end 

nyc_pigeon_organizer(pigeon_data)



