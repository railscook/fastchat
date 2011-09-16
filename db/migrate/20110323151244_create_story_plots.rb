class CreateStoryPlots < ActiveRecord::Migration
  def self.up
    create_table :story_plots do |t|
      t.integer :bot_story_id
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :story_plots
  end
end
