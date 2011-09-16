namespace :hello do
  desc 'greeting'
  task :morning do
	puts "Good morning #{Time.now}"
  end

  task :online_user => :environment do
    total_count = OnlineUser.count
    bot_count = OnlineUser.count :conditions => ["userRole = ?", 0]
    admin_count = OnlineUser.count :conditions => ["userRole = ?", 3]
    mod_count = OnlineUser.count :conditions => ["userRole = ?", 2]
    user_count = OnlineUser.count :conditions => ["userRole = ?", 1]

    #OnlineUser.find(:all).each do |chat|
    #    count += 1
    #end
    puts "Total: #{total_count} \n Bot: #{bot_count} \n Admin: #{admin_count} \n Moderator: #{mod_count} \n User: #{user_count}"
  end

end
