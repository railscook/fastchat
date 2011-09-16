class CreateBotStories < ActiveRecord::Migration
  def self.up
    create_table :bot_stories do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :bot_stories
  end
end
