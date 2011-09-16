class BotStory < ActiveRecord::Base
  has_many :story_plots

  class << self
  def start_story
	loop do
	 login_logs = LoginLog.all :conditions => ["status is null"]
	 login_logs.each do |log|
	  bot_chat
	  log.update_attribute('status','done')
          if(rand(100%2) == 0) 
		joker
          end
	 end
	end

  end

 def joker
text = []
text.push("[img]http://shwecommunity.itbaybay.com/chat/img/emoticons/dizzy.gif[/img]")
text.push("[img]http://chat.itbaybay.com/chat/img/emoticons/music.gif[/img]")
text.push("[img]http://chat.itbaybay.com/chat/img/emoticons/iboring.gif[/img]")
text.push("Helloooooooo [img]http://chat.itbaybay.com/chat/img/emoticons/lspeaker.jpg[/img]")

txt_index = rand(text.count)
txt = text[txt_index]

bots = OnlineUser.all :conditions => ["userRole = ?",'0']
bot_index = rand(bots.count)
bot = bots[bot_index]

Chat.create({:userID => bot.userID,
:userName => bot.userName, 
:userRole => bot.userRole, 
:channel => Channel.first.id, 
:dateTime => Time.now, 
:ip => bot.ip, 
:text => txt})

 end

  def bot_chat
bots = OnlineUser.all :conditions => ["userRole = ?",'0']
index = bot_index = rand(bots.count)
bot = bots[bot_index]

bot_stories = BotStory.all


#bots.each_with_index do |bot, index|
sleep(20)
bs = bot_stories[index]
bs.story_plots.each do |p|

Chat.create({:userID => bot.userID,
:userName => bot.userName, 
:userRole => bot.userRole, 
:channel => Channel.first, 
:dateTime => Time.now, 
:ip => bot.ip, 
:text => p.message})
sleep(5)
end

#end

  end
end
end
