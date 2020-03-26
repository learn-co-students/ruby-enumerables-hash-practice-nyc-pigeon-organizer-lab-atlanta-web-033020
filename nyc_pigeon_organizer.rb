def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value|
    value.each do |att, name_array|
      name_array.each do |name| 
        if !new_hash.include? name
          new_hash[name] = {}
        end 
        if !new_hash[name].include? key 
          new_hash[name][key] = []
        else
      end
      new_hash[name][key] << att.to_s 
    end
  end
end
new_hash
end
