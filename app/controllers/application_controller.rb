# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
#require 'gdata'
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
    
  DOCLIST_SCOPE = 'http://docs.google.com/feeds/'
  DOCLIST_DOWNLOD_SCOPE = 'http://docs.googleusercontent.com/'
  CONTACTS_SCOPE = 'http://www.google.com/m8/feeds/'
  SPREADSHEETS_SCOPE = 'http://spreadsheets.google.com/feeds/'
  #CALENDAR_SCOPE = 'http://www.google.com/calendar/feeds/'

  DOCLIST_FEED = DOCLIST_SCOPE + 'default/private/full'
  #CALENDAR_FEED = CALENDAR_SCOPE + 'default/private/full'
 
  DOCUMENT_DOC_TYPE = 'document'
  FOLDER_DOC_TYPE = 'folder'
  PRESO_DOC_TYPE = 'presentation'
  PDF_DOC_TYPE = 'pdf'
  SPREADSHEET_DOC_TYPE = 'spreadsheet'
  MINE_LABEL = 'mine'
  STARRED_LABEL = 'starred'
  TRASHED_LABEL = 'trashed'

  MAX_CONTACTS_RESULTS = 500


  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  def login_required
    if current_user
      @login_user = current_user     
    else
      redirect_to "/accounts/" and return
    end
  end

  def channel
   c = Channel.find_by_name "Public"
   c
  end

  def current_user=(new_user)
   online_user = OnlineUser.find_by_userName(new_user.login)
   online_user.destroy if online_user
   if session[:user] = !new_user.nil? && User.find_by_login_and_password(new_user.login, new_user.password)
    @current_user = session[:user] 
    OnlineUser.create(:userName => @current_user.login, 
                     :userRole => @current_user.getRole, 
                     :userID => @current_user.id, 
                     :channel => channel.id,
                     :dateTime => Time.now, 
                     :ip => request.remote_ip)
    @current_user
   end
  end

  def current_user
    @current_user = session[:user] && User.find(session[:user])
    @current_user
  end

  def _logout
    if current_user
      user = OnlineUser.find_by_userName(current_user.login)
      user.destroy if user
      reset_session #session.destory
    end
    redirect_to "/accounts/" and return
  end

  private

  def setup_client
    scopes = [DOCLIST_SCOPE, DOCLIST_DOWNLOD_SCOPE,
              SPREADSHEETS_SCOPE, CONTACTS_SCOPE]
    @client = GData::Client::DocList.new({:authsub_scope => scopes.join(' '),
                                          :source => 'google-DocListManager-v1.1',
                                          :version => '3.0'})

    if params[:token].nil? and session[:token].nil?
      next_url = url_for :controller => self.controller_name, :action => self.action_name
      secure = false
      sess = true
      @authsub_link = @client.authsub_url(next_url, secure, sess)
      render :controller => 'accounts'
    elsif params[:token] and session[:token].nil?
      @client.authsub_token = params[:token]
      session[:token] = @client.auth_handler.upgrade()
    end

    @client.authsub_token = session[:token] if session[:token]
  end

  def setup_useremail
    # Query feed to fetch user's email
    if session[:users_email].nil?
      feed = @client.get(DOCLIST_FEED + '?max-results=0').to_xml
      session[:users_email] = feed.elements['author/email'].text
    end
      @user = User.find_by_email session[:users_email]
      self.current_user = @user if @user
  end


end
