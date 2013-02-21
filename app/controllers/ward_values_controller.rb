class WardValuesController < ApplicationController
  # GET /ward_values
  # GET /ward_values.json
  def index
    @ward_values = WardValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ward_values }
    end
  end

  # GET /ward_values/1
  # GET /ward_values/1.json
  def show
    @ward_value = WardValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ward_value }
    end
  end

  # GET /ward_values/new
  # GET /ward_values/new.json
  def new
    @ward_value = WardValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ward_value }
    end
  end

  # GET /ward_values/1/edit
  def edit
    @ward_value = WardValue.find(params[:id])
  end

  # POST /ward_values
  # POST /ward_values.json
  def create
    @ward_value = WardValue.new(params[:ward_value])

    respond_to do |format|
      if @ward_value.save
        format.html { redirect_to @ward_value, notice: 'Ward value was successfully created.' }
        format.json { render json: @ward_value, status: :created, location: @ward_value }
      else
        format.html { render action: "new" }
        format.json { render json: @ward_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ward_values/1
  # PUT /ward_values/1.json
  def update
    @ward_value = WardValue.find(params[:id])

    respond_to do |format|
      if @ward_value.update_attributes(params[:ward_value])
        format.html { redirect_to @ward_value, notice: 'Ward value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ward_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ward_values/1
  # DELETE /ward_values/1.json
  def destroy
    @ward_value = WardValue.find(params[:id])
    @ward_value.destroy

    respond_to do |format|
      format.html { redirect_to ward_values_url }
      format.json { head :no_content }
    end
  end
end
