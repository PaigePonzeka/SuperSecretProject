class GroupMembersController < ApplicationController
  # GET /group_members
  # GET /group_members.xml
  def index
    @group_members = GroupMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @group_members }
    end
  end

  # GET /group_members/1
  # GET /group_members/1.xml
  def show
    @group_member = GroupMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group_member }
    end
  end

  # GET /group_members/new
  # GET /group_members/new.xml
  def new
    @group_member = GroupMember.new
    @group = GroupMember.find(params[:group_id])
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group_member }
    end
  end

  # GET /group_members/1/edit
  def edit
    @group_member = GroupMember.find(params[:id])
  end

  # POST /group_members
  # POST /group_members.xml
  def create
    @group_member = GroupMember.new(params[:group_member])

    respond_to do |format|
      if @group_member.save
        format.html { redirect_to(@group_member, :notice => 'Group member was successfully created.') }
        format.xml  { render :xml => @group_member, :status => :created, :location => @group_member }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /group_members/1
  # PUT /group_members/1.xml
  def update
    @group_member = GroupMember.find(params[:id])

    respond_to do |format|
      if @group_member.update_attributes(params[:group_member])
        format.html { redirect_to(@group_member, :notice => 'Group member was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /group_members/1
  # DELETE /group_members/1.xml
  def destroy
    @group_member = GroupMember.find(params[:id])
    @group_member.destroy

    respond_to do |format|
      format.html { redirect_to(group_members_url) }
      format.xml  { head :ok }
    end
  end
end
