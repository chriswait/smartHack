class PydwgnsController < ApplicationController
  # GET /pydwgns
  # GET /pydwgns.json
  def index
    @pydwgns = Pydwgn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pydwgns }
    end
  end

  # GET /pydwgns/1
  # GET /pydwgns/1.json
  def show
    @pydwgn = Pydwgn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pydwgn }
    end
  end

  # GET /pydwgns/new
  # GET /pydwgns/new.json
  def new
    @pydwgn = Pydwgn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pydwgn }
    end
  end

  # GET /pydwgns/1/edit
  def edit
    @pydwgn = Pydwgn.find(params[:id])
  end

  # POST /pydwgns
  # POST /pydwgns.json
  def create
    @pydwgn = Pydwgn.new(params[:pydwgn])

    respond_to do |format|
      if @pydwgn.save
        format.html { redirect_to @pydwgn, notice: 'Pydwgn was successfully created.' }
        format.json { render json: @pydwgn, status: :created, location: @pydwgn }
      else
        format.html { render action: "new" }
        format.json { render json: @pydwgn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pydwgns/1
  # PUT /pydwgns/1.json
  def update
    @pydwgn = Pydwgn.find(params[:id])

    respond_to do |format|
      if @pydwgn.update_attributes(params[:pydwgn])
        format.html { redirect_to @pydwgn, notice: 'Pydwgn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pydwgn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pydwgns/1
  # DELETE /pydwgns/1.json
  def destroy
    @pydwgn = Pydwgn.find(params[:id])
    @pydwgn.destroy

    respond_to do |format|
      format.html { redirect_to pydwgns_url }
      format.json { head :no_content }
    end
  end
end
