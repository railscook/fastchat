class AddUserOldStatusToUsers < ActiveRecord::Migration
  def self.up
   add_column :ajax_chat_users, :userOldStatus, :string
  end

  def self.down
   remove_column :ajax_chat_users, :userOldStatus
  end
end
