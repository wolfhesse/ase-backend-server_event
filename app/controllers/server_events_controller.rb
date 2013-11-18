class ServerEventsController < ApplicationController
  before_filter do
    session[:page] ||= params[:page] unless params[:page] != session[:page]
    session[:page] = params[:page] if params[:page] && params[:page] != session[:page]
  end

  # GET /server_events
  # GET /server_events.json
  def index
    @server_events =
        ServerEvent.by_name.paginate :page => session[:page]
    #ServerEvent.by_name.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @server_events }
    end
  end

  # GET /server_events/1
  # GET /server_events/1.json
  def show
    @server_event = ServerEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @server_event }
    end
  end

  # GET /server_events/new
  # GET /server_events/new.json
  def new
    @server_event = ServerEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @server_event }
    end
  end

  # GET /server_events/1/edit
  def edit
    @server_event = ServerEvent.find(params[:id])
  end

  # POST /server_events
  # POST /server_events.json
  def create
    @server_event = ServerEvent.new(params[:server_event])

    respond_to do |format|
      if @server_event.save
        format.html { redirect_to @server_event, notice: 'Server event was successfully created.' }
        format.json { render json: @server_event, status: :created, location: @server_event }
      else
        format.html { render action: "new" }
        format.json { render json: @server_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /server_events/1
  # PUT /server_events/1.json
  def update
    @server_event = ServerEvent.find(params[:id])

    respond_to do |format|
      if @server_event.update_attributes(params[:server_event])
        format.html { redirect_to @server_event, notice: 'Server event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit", notice: 'Server event was not updated!' }
        format.json { render json: @server_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_events/1
  # DELETE /server_events/1.json
  def destroy
    @server_event = ServerEvent.find(params[:id])
    @server_event.destroy

    respond_to do |format|
      format.html { redirect_to server_events_url }
      format.json { head :no_content }
    end
  end
end

#
# vim: fdm=syntax
#
