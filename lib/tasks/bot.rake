namespace :bot do
  desc 'chat1'
  task :chat => :environment do
	 login_logs = LoginLog.all :conditions => ["status is null"]
 	 login_logs.each do |log|
		BotStory::play_plot(log)
  		#log.update_attribute('status',1)
		puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
 	 end
  end

  desc 'chat2'
  task :crazychat => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat3'
  task :loverchat => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat4'
  task :qqchat => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat5'
  task :welcomechat => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat6'
  task :familychat => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat7'
  task :misschatterbox => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat8'
  task :talkative => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat9'
  task :hello => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat10'
  task :greet => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat11'
  task :sayhello => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat12'
  task :sayhi => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat13'
  task :missu => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat14'
  task :welcome => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end

  desc 'chat15'
  task :mingalar => :environment do
         login_logs = LoginLog.all :conditions => ["status is null"]
         login_logs.each do |log|
                BotStory::play_plot(log)
                #log.update_attribute('status',1)
                puts "log (#{log.id}) (#{log.user_id}) (#{log.username}) at #{Time.now}"
         end
  end


end
