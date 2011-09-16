class User < ActiveRecord::Base
  set_table_name "ajax_chat_users"
  def getRole
    return 1 unless userRole
    case userRole
     when '0'
      return 1
     when 'admin'
      return 3
     when 'moderator'
       return 2
    end
  end
end
