class Prefix2sController < ApplicationController
  # GET /prefix2s
  # GET /prefix2s.json
  set_tab :code
  def index
    @prefix2s = Prefix2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prefix2s }
    end
  end

  # GET /prefix2s/1
  # GET /prefix2s/1.json
  def show
    @prefix2 = Prefix2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prefix2 }
    end
  end

  # GET /prefix2s/new
  # GET /prefix2s/new.json
  def new
    @prefix2 = Prefix2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prefix2 }
    end
  end

  # GET /prefix2s/1/edit
  def edit
    @prefix2 = Prefix2.find(params[:id])
  end

  # POST /prefix2s
  # POST /prefix2s.json
  def create
    @prefix2 = Prefix2.new(params[:prefix2])

    respond_to do |format|
      if @prefix2.save
        format.html { redirect_to @prefix2, notice: 'Prefix2 was successfully created.' }
        format.json { render json: @prefix2, status: :created, location: @prefix2 }
      else
        format.html { render action: "new" }
        format.json { render json: @prefix2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prefix2s/1
  # PUT /prefix2s/1.json
  def update
    @prefix2 = Prefix2.find(params[:id])

    respond_to do |format|
      if @prefix2.update_attributes(params[:prefix2])
        format.html { redirect_to @prefix2, notice: 'Prefix2 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @prefix2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prefix2s/1
  # DELETE /prefix2s/1.json
  def destroy
    @prefix2 = Prefix2.find(params[:id])
    @prefix2.destroy

    respond_to do |format|
      format.html { redirect_to prefix2s_url }
      format.json { head :ok }
    end
  end
end
