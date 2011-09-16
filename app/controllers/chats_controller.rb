class ChatsController < ApplicationController
  before_filter :login_required
  # GET /chats
  # GET /chats.xml
  def index
    @chats = Chat.all :conditions => ["text NOT LIKE ?", "%privmsg%"], :order => "id desc", :limit => 10
    @chats.sort! {|a,b| a.id <=> b.id}
    update_online_users
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chats }
    end
  end

  # GET /chats/1
  # GET /chats/1.xml
  def show
    @chat = Chat.find(params[:id])
    @chats = Chat.all :conditions => ["id > ? AND text NOT LIKE ?", @chat.id, "%privmsg%"]
    update_online_users
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chat }
      format.js   { render :action => 'show.rjs'}
    end
  end

  # GET /chats/new
  # GET /chats/new.xml
  def new
    @chat = Chat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chat }
    end
  end

  # GET /chats/1/edit
  def edit
    @chat = Chat.find(params[:id])
  end

  # POST /chats
  # POST /chats.xml
  def create
    @chat = Chat.new(params[:chat])
    @chat.userName = @login_user.login
    @chat.userRole = @login_user.userRole
    @chat.userID = @login_user.id
    @chat.channel = channel.id
    @chat.dateTime = Time.now
    @chat.ip = request.remote_ip

    respond_to do |format|
      if @chat.save
        update_online_users
        #flash[:notice] = 'Chat was successfully created.'
        format.html { redirect_to(@chat) }
        format.xml  { render :xml => @chat, :status => :created, :location => @chat }
	format.js   { render :action => "create.rjs"}
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chat.errors, :status => :unprocessable_entity }
      end
    end
   
  end

  # PUT /chats/1
  # PUT /chats/1.xml
  def update
    @chat = Chat.find(params[:id])

    respond_to do |format|
      if @chat.update_attributes(params[:chat])
        #flash[:notice] = 'Chat was successfully updated.'
        format.html { redirect_to(@chat) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chats/1
  # DELETE /chats/1.xml
  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy

    respond_to do |format|
      format.html { redirect_to(chats_url) }
      format.xml  { head :ok }
    end
  end

  protected
  def update_online_users
    @online_users = OnlineUser.all
    @online_user_totals = @online_users.count
  end

end
