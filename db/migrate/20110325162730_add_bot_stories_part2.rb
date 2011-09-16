class AddBotStoriesPart2 < ActiveRecord::Migration
  def self.up
   bs = BotStory.create(:name => "Meeting")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/shwewelcome.gif[/img]")
   bs.story_plots.create(:message => "hellooo")
   bs.story_plots.create(:message => "mingalar par")
   bs.story_plots.create(:message => "meeting shi tal, going out ya mal ")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/coffee.gif[/img]")
   bs.story_plots.create(:message => "kana go ya mal")
   bs.story_plots.create(:message => "kana away")

   bs = BotStory.create(:name => "Coffee")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/shwewelcome.gif[/img]")
   bs.story_plots.create(:message => "hellooo")
   bs.story_plots.create(:message => "mingalar par")
   bs.story_plots.create(:message => "coffee ka na twar pyaw lite own mal ")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/coffee.gif[/img]")
   bs.story_plots.create(:message => "kana away")

  end

  def self.down
  end
end
