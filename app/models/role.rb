class Role < ActiveRecord::Base
    belongs_to :movie
    belongs_to :actor

def credit
    "#{self.character_name}: Played by #{self.actor.name}"
end


end