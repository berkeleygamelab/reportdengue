# encoding: utf-8
class NoticesController < ApplicationController
  # GET /notices
  # GET /notices.json
  def index
    @notices = Notice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notices }
    end
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
    @notice = Notice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notice }
    end
  end

  # GET /notices/new
  # GET /notices/new.json
  def new
    @notice = Notice.new
    @notice.date = Time.new
    @neighborhoods = Neighborhood.all.collect{ |neighborhood| [neighborhood.name, neighborhood.id]}
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notice }
    end
  end

  # GET /notices/1/edit
  def edit
    @neighborhoods = Neighborhood.all.collect{ |neighborhood| [neighborhood.name, neighborhood.id]}
    @notice = Notice.find(params[:id])
  end

  # POST /notices
  # POST /notices.json
  def create
    @notice = Notice.new(params[:notice])
    @notice.neighborhood_id = params[:notice][:neighborhood_id]

    if params[:notice][:date]
      date = Time.new(params[:notice]["date(1i)"], params[:notice]["date(2i)"], params[:notice]["date(3i)"], params[:notice]["hour(4i)"], params[:notice]["hour(5i)"], 0)
      @notice.date = date
    end
    
    respond_to do |format|
      if @notice.save
        format.html { redirect_to @notice, notice: 'Notícia criada com sucesso.' }
        format.json { render json: @notice, status: :created, location: @notice }
      else
        format.html { render action: "new" }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notices/1
  # PUT /notices/1.json
  def update
    @notice = Notice.find(params[:id])
    
    respond_to do |format|
      if @notice.update_attributes(params[:notice])
        if params[:notice][:date]
          date = Time.new(params[:notice]["date(1i)"], params[:notice]["date(2i)"], params[:notice]["date(3i)"], params[:notice]["hour(4i)"], params[:notice]["hour(5i)"], 0)
          @notice.date = date
        end
        @notice.save
        format.html { redirect_to @notice, notice: 'Notice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.json
  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy

    respond_to do |format|
      format.html { redirect_to notices_url }
      format.json { head :no_content }
    end
  end
end
