class AddBotStoriesPart3 < ActiveRecord::Migration
  def self.up
   bs = BotStory.create(:name => "Shower")
   bs.story_plots.create(:message => "hellooo")
   bs.story_plots.create(:message => "mingalar par")
   bs.story_plots.create(:message => "ku pae yay twar cho taw. ma lo ")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/:ygm.gif[/img]")
   bs.story_plots.create(:message => "kana away naw")
   bs.story_plots.create(:message => "yay moe cho, khar khar lain pi yin")
   bs.story_plots.create(:message => "pyan lar kae mal")

   bs = BotStory.create(:name => "Mom")
   bs.story_plots.create(:message => "hiiiiiiii ")
   bs.story_plots.create(:message => "nay kan lar")
   bs.story_plots.create(:message => "mom call nay lo ")
   bs.story_plots.create(:message => "kana go lite own mal")
   bs.story_plots.create(:message => "chan shin kaing nay tar")
   bs.story_plots.create(:message => "daddy ma pyan lar khin lay")
   bs.story_plots.create(:message => "mom ka arr arr shi, eain ko ta nay tar pae")
   bs.story_plots.create(:message => "pi yin pyan lar kae mal")

  end

  def self.down
  end
end
