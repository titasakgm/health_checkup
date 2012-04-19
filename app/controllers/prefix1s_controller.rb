class Prefix1sController < ApplicationController
  # GET /prefix1s
  # GET /prefix1s.json
  set_tab :code
  def index
    @prefix1s = Prefix1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prefix1s }
    end
  end

  # GET /prefix1s/1
  # GET /prefix1s/1.json
  def show
    @prefix1 = Prefix1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prefix1 }
    end
  end

  # GET /prefix1s/new
  # GET /prefix1s/new.json
  def new
    @prefix1 = Prefix1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prefix1 }
    end
  end

  # GET /prefix1s/1/edit
  def edit
    @prefix1 = Prefix1.find(params[:id])
  end

  # POST /prefix1s
  # POST /prefix1s.json
  def create
    @prefix1 = Prefix1.new(params[:prefix1])

    respond_to do |format|
      if @prefix1.save
        format.html { redirect_to @prefix1, notice: 'Prefix1 was successfully created.' }
        format.json { render json: @prefix1, status: :created, location: @prefix1 }
      else
        format.html { render action: "new" }
        format.json { render json: @prefix1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prefix1s/1
  # PUT /prefix1s/1.json
  def update
    @prefix1 = Prefix1.find(params[:id])

    respond_to do |format|
      if @prefix1.update_attributes(params[:prefix1])
        format.html { redirect_to @prefix1, notice: 'Prefix1 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @prefix1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prefix1s/1
  # DELETE /prefix1s/1.json
  def destroy
    @prefix1 = Prefix1.find(params[:id])
    @prefix1.destroy

    respond_to do |format|
      format.html { redirect_to prefix1s_url }
      format.json { head :ok }
    end
  end
end
