class DoodlesController < ApplicationController
  # GET /doodles
  # GET /doodles.json
  def index
    @doodles = Doodle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doodles }
    end
  end

  # GET /doodles/1
  # GET /doodles/1.json
  def show
    @doodle = Doodle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doodle }
    end
  end

  # GET /doodles/new
  # GET /doodles/new.json
  def new
    @doodle = Doodle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doodle }
    end
  end

  # GET /doodles/1/edit
  def edit
    @doodle = Doodle.find(params[:id])
  end

  # POST /doodles
  # POST /doodles.json
  def create
    @doodle = Doodle.new(params[:doodle])

    respond_to do |format|
      if @doodle.save
        format.html { redirect_to @doodle, notice: 'Doodle was successfully created.' }
        format.json { render json: @doodle, status: :created, location: @doodle }
      else
        format.html { render action: "new" }
        format.json { render json: @doodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doodles/1
  # PUT /doodles/1.json
  def update
    @doodle = Doodle.find(params[:id])

    respond_to do |format|
      if @doodle.update_attributes(params[:doodle])
        format.html { redirect_to @doodle, notice: 'Doodle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doodles/1
  # DELETE /doodles/1.json
  def destroy
    @doodle = Doodle.find(params[:id])
    @doodle.destroy

    respond_to do |format|
      format.html { redirect_to doodles_url }
      format.json { head :no_content }
    end
  end
end
