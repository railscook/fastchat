class AccountsController < ApplicationController
  # GET /users
  # GET /users.xml
  before_filter :setup_client, :setup_useremail
  protect_from_forgery :only => [:create, :update, :destroy]

  def index
    #@users = User.all
    respond_to do |format|
      if current_user
        flash[:notice] = 'User was successfully login.'
        format.html { redirect_to(chats_url) }
        format.xml  #{ render :xml => @user, :status => :created, :location => @user }
      else
	format.html 
	format.xml
      end
    end

  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end


  def login
    @user = User.new(params[:user])
    self.current_user = @user
    respond_to do |format|
      if current_user
        flash[:notice] = 'User was successfully login.'
        format.html { redirect_to(chats_url) }
        format.xml  #{ render :xml => @user, :status => :created, :location => @user }
      else
	flash[:notice] ='Login/Password is not found or account has not been created.'
        format.html { redirect_to(accounts_url) }
        format.xml  #{ render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def logout
    begin
    @client.auth_handler.revoke if @client
    rescue
    end
    session[:users_email] = nil
    session[:token] = nil
    self._logout
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = 'User was successfully created.'
        format.html { redirect_to(@user) }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end


end
