class AddIdToOnlineUsers < ActiveRecord::Migration
  def self.up
	add_column :ajax_chat_online, :id, :primary_key
  end

  def self.down
	remove_column :ajax_chat_online, :id
  end
end
