class AddBotIdToLoginLogs < ActiveRecord::Migration
  def self.up
	add_column :login_logs, :bot_id, :integer
  end

  def self.down
   	remove_column :login_logs, :bot_id
  end
end
