class AddTypeToUsers < ActiveRecord::Migration
  def self.up
	add_column :ajax_chat_users, :type, :string
  end

  def self.down
	remove_column :ajax_chat_users, :type
  end
end
