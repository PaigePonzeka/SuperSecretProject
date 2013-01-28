class GroupsController < ApplicationController

  # GET /groups
  # GET /groups.xml
  def index
    @groups = Group.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groups }
    end
  end
  # GET /groups/1
  # GET /groups/1.xml
  def show
    @group = Group.find(params[:id])
    session[:previous_group] = params[:id]

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.xml
  def new
  @group = Group.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])


  end

  # POST /groups
  # POST /groups.xml
  def create
    @group = Group.new(params[:group])
    # add the currently signed in user to the group


    respond_to do |format|
      if @group.save
        # automatically add the current user to the group
        current_member = GroupMember.new(:user_id => current_user, :group_id => @group.id)
        current_member.save
        format.html { redirect_to(@group, :notice => 'Group was successfully created.') }
        format.xml  { render :xml => @group, :status => :created, :location => @group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groups/1
  # PUT /groups/1.xml
  def update
    @group = Group.find(params[:id])
    logger.debug "----- \n The post was saved and now the user is going to be \n --- "
    logger.debug params.inspect
     # if there is a new user added
     if (params[:newuser_id])
       new_member = GroupMember.new(:user_id => params[:newuser_id], :group_id => @group.id)
       new_member.save
       logger.debug "-----Saving User --------"
     end
      #new_member = GroupMember.new(:user_id => params[:newuser_id], :group_id => @group.id)
      #new_member.save
      # if new members are added create a new relationship in the database
      #current_member = GroupMember.new(:user_id => current_user, :group_id => @group.id)
      #current_member.save
    respond_to do |format|

      if @group.update_attributes(params[:group])

        format.html { redirect_to(@group, :notice => 'Group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.xml
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to(groups_url) }
      format.xml  { head :ok }
    end
  end
end
