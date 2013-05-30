# require '../lib/dockable'

class Garage

    include Dockable
    
    def fix!
        broken_bikes.each do |bike|
            bike.fix!
        end

    end 
end
 
