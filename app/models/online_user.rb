class OnlineUser < ActiveRecord::Base
  set_table_name "ajax_chat_online"
  def dom_id
    "online_user_#{self.id}"
  end

  def after_create
	Chat.create(	:userID => 2147483647, 
			:userName => "ChatBot", 
			:userRole  => 4, 
			:channel  => 0, 
			:dateTime => Time.now, 
			:ip => "",
			:text => "/login #{self.userName}")
  end

  def before_destroy
        Chat.create(    :userID => 2147483647,
                        :userName => "ChatBot", 
                        :userRole  => 4, 
                        :channel  => 0, 
                        :dateTime => Time.now, 
                        :ip => "",
                        :text => "/logout #{self.userName}")
  end
end
