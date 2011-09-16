class AddBotStoryIdToLoginLogs < ActiveRecord::Migration
  def self.up
	add_column :login_logs, :bot_story_id, :integer
  end

  def self.down
	remove_column :login_logs, :bot_story_id
  end
end
