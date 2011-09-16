class BotStory < ActiveRecord::Base
  has_many :story_plots

  class << self
	def play_plot(log)
		bots = OnlineUser.all 	:select => 'userID', 
					:conditions => ["userRole = ?",'0']
		old_bots = LoginLog.all :select => "bot_id, bot_story_id",
					:conditions => ["status is not null"], 
					:order => "id desc", 
					:limit => 3
		log.update_attribute('status',1)
		new_bots = bots.collect(&:userID) - old_bots.collect(&:bot_id)
		bot = OnlineUser.find_by_userID new_bots.first
		if bot
		  log.update_attribute('bot_id',bot.userID)

		  #bot_stories = BotStory.all
		  #index = rand(bot_stories.count+1)
		  #bs = bot_stories[index]
		  bs = BotStory.find_by_id old_bots.first.bot_story_id.to_i.succ	
		  unless bs
			bs = BotStory.first
		  end
		  log.update_attribute('bot_story_id',bs.id)
		  bs.story_plots.each do |p|
			Chat.create({:userID => bot.userID,
					:userName => bot.userName, 
					:userRole => bot.userRole, 
					:channel => 0, #Channel.first.id,
					:dateTime => Time.now, 
					:ip => bot.ip, 
					:text => p.message})
			sleep(25)
		  end
		end
	end
  end
end
