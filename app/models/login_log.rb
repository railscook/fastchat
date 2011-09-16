class LoginLog < ActiveRecord::Base
	belongs_to :bot, :class_name => 'User', :foreign_key => :bot_id
	belongs_to :user
end
