module ChatsHelper
 def hello_from_the_helper
   page.alert "Hello World FromHelper)"
 end

 def toogle_links(dom_id, action)
  update_page do |page|
    page.send(action, dom_id)
  end
 end

 def remove_code_helper txt
   txt.gsub!(/\[\/[a-zA-Z]*\]/,"")
   txt.gsub!(/\[[a-z]*\=*[a-zA-Z]*\]/,"")
   txt
 end

  def toogle_chat_links(action)
			update_page do |page|
				page.select("#chats div a").each do |item|
					page.send(action, item)
			  end
			end
	end
end
