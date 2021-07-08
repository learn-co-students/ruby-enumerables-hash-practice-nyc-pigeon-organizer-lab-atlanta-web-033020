require 'pry'


def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}
  data.each do |attribute_key, attribute_value_hash|
    attribute_value_hash.each do | key, names |
      names.each do |name|
        if !new_pigeon_hash.include? name
          new_pigeon_hash[name] = {}
        end
        if !new_pigeon_hash[name].include? attribute_key
          new_pigeon_hash[name][attribute_key] = []
        else 
        end
      new_pigeon_hash[name][attribute_key] << key.to_s
      end
    end
  end
  new_pigeon_hash
end