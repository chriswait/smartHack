class StreetValuesController < ApplicationController
  # GET /street_values
  # GET /street_values.json
  def index
    @street_values = StreetValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @street_values }
    end
  end

  # GET /street_values/1
  # GET /street_values/1.json
  def show
    @street_value = StreetValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @street_value }
    end
  end

  # GET /street_values/new
  # GET /street_values/new.json
  def new
    @street_value = StreetValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @street_value }
    end
  end

  # GET /street_values/1/edit
  def edit
    @street_value = StreetValue.find(params[:id])
  end

  # POST /street_values
  # POST /street_values.json
  def create
    @street_value = StreetValue.new(params[:street_value])

    respond_to do |format|
      if @street_value.save
        format.html { redirect_to @street_value, notice: 'Street value was successfully created.' }
        format.json { render json: @street_value, status: :created, location: @street_value }
      else
        format.html { render action: "new" }
        format.json { render json: @street_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /street_values/1
  # PUT /street_values/1.json
  def update
    @street_value = StreetValue.find(params[:id])

    respond_to do |format|
      if @street_value.update_attributes(params[:street_value])
        format.html { redirect_to @street_value, notice: 'Street value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @street_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /street_values/1
  # DELETE /street_values/1.json
  def destroy
    @street_value = StreetValue.find(params[:id])
    @street_value.destroy

    respond_to do |format|
      format.html { redirect_to street_values_url }
      format.json { head :no_content }
    end
  end
end
