class Chat < ActiveRecord::Base
  set_table_name "ajax_chat_messages"
  def dom_id
   "chat_#{self.id}"
  end
end
