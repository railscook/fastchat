class Online < ActiveRecord::Base
 def dom_id
  "online_user_#{self.id}"
 end
end
