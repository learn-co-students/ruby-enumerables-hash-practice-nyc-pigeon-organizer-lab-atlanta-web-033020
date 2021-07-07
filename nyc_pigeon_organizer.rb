
require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
 
                org_by_pigeon_name = {}
                
  
              data.each do |attribute, info_hash |
                info_hash.each do |pigeon_description, pigeon_names|
                  pigeon_names.each do |name|
                    
                      if !org_by_pigeon_name[name]
                            # creates 7 total pigeon name hashes (with 1st attribute (color) & 1st values
                              org_by_pigeon_name[name] = {}
                             # set up empty keys first
                       end      
                           
                        # Separated out the if statements because the ACTIONS of setting up keys are on par so the if statements canNOT be nested   
                              
                      if !org_by_pigeon_name[name][attribute]
                                org_by_pigeon_name[name][attribute] = []
                          # set up empty keys first
                                 
                      end
                      
                      org_by_pigeon_name[name][attribute] << pigeon_description.to_s
                      # make sure that pigeon_description is always a string value
                      #convert symbol to string in Ruby
                  end
                  
                  
                  # p i_key
                  # p i_value
                end
                
                # p key
                # p value
              end
  
    org_by_pigeon_name
end
