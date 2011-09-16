class AddBotStories < ActiveRecord::Migration
  def self.up
   bs = BotStory.create(:name => "Cooking")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/shwecommunichatroom.gif[/img]")
   bs.story_plots.create(:message => "hihi")
   bs.story_plots.create(:message => "hi tea")
   bs.story_plots.create(:message => "hee hee")
   bs.story_plots.create(:message => "nay kg lar")
   bs.story_plots.create(:message => "ku pae eat bo")
   bs.story_plots.create(:message => "twat cook taw. ma lo")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/2ofuscooking.gif[/img]")
   bs.story_plots.create(:message => "ka na away naw")
   bs.story_plots.create(:message => "cook pi pyan lar mal")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/cooking.gif[/img]")
   bs.story_plots.create(:message => "3 mins pae saunt :P")

   bs = BotStory.create(:name => "Working")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/shwewelcome.gif[/img]")
   bs.story_plots.create(:message => "hellooo")
   bs.story_plots.create(:message => "mingalar par")
   bs.story_plots.create(:message => "nae nae busy nay tal")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/coffee.gif[/img]")
   bs.story_plots.create(:message => "kana away p...  work nay loh...")
   bs.story_plots.create(:message => "sorry A")

   bs = BotStory.create(:name => "Visitor")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/morning.gif[/img]")
   bs.story_plots.create(:message => "hello mingalar par")
   bs.story_plots.create(:message => "nay kan lar waiiiiiii")
   bs.story_plots.create(:message => "visitor yout nay lo")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/gossip.gif[/img]")
   bs.story_plots.create(:message => "visitor pyan twar yin arr pi")

   bs = BotStory.create(:name => "Cleaning House")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/whatsup.gif[/img]")
   bs.story_plots.create(:message => "mingalar par wai")
   bs.story_plots.create(:message => "kyan kan tar lo mar par sa")
   bs.story_plots.create(:message => "eain shin nay tar")
   bs.story_plots.create(:message => "ta eain lone shote pwa nay lo lay")
   bs.story_plots.create(:message => ":D")


   bs = BotStory.create(:name => "Studying")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/welcome.gif[/img]")
   bs.story_plots.create(:message => "hiiiii")
   bs.story_plots.create(:message => "sar lote nay tar :(")
   bs.story_plots.create(:message => "kaung taung muu tal")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/studyingzzz.gif[/img]")
   bs.story_plots.create(:message => "sar lote pi yin pyan lar kae mal")

   bs = BotStory.create(:name => "Busy")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/happy.gif[/img]")
   bs.story_plots.create(:message => "nay kg lar byoooo")
   bs.story_plots.create(:message => "a ku nae nae a lote shote nay lo")
   bs.story_plots.create(:message => "sorry naw")
   bs.story_plots.create(:message => "pi taw. mal")

   bs = BotStory.create(:name => "Accounting")
   bs.story_plots.create(:message => "[img]http://chat.itbaybay.com/chat/img/emoticons/ha3.gif[/img]")
   bs.story_plots.create(:message => "hi")
   bs.story_plots.create(:message => "nay kg lar")
   bs.story_plots.create(:message => "sa yin twat nay tar")
   bs.story_plots.create(:message => "today zay twar wal lo ")
   bs.story_plots.create(:message => "ka na lay naw fri")
   

  end

  def self.down
  end
end
