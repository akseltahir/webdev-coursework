class EchosController < ApplicationController
  before_action :set_echo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /echos
  # GET /echos.json
  def index
    @echos = Echo.all
  end

  # GET /echos/1
  # GET /echos/1.json
  def show

  end

  # GET /echos/new
  def new
    @echo = current_user.echos.build
  end

  # GET /echos/1/edit
  def edit
  end

  # POST /echos
  # POST /echos.json
  def create
    @echo = current_user.echos.build(echo_params) 

    respond_to do |format|
      if @echo.save
        format.html { redirect_to @echo, notice: 'Echoed succesfully' }
        format.json { render :show, status: :created, location: @echo }
      else
        format.html { render :new }
        format.json { render json: @echo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /echos/1
  # PATCH/PUT /echos/1.json
  def update
    respond_to do |format|
      if @echo.update(echo_params)
        format.html { redirect_to @echo, notice: 'Echo was successfully updated.' }
        format.json { render :show, status: :ok, location: @echo }
      else
        format.html { render :edit }
        format.json { render json: @echo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /echos/1
  # DELETE /echos/1.json
  def destroy
    @echo.destroy
    respond_to do |format|
      format.html { redirect_to echos_url, notice: 'Echo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @echo = Echo.find(params[:id])
    @echo.upvote_by current_user
    redirect_back fallback_location: root_path
  end

  def downvote
    @echo = Echo.find(params[:id])
    @echo.downvote_by current_user
    redirect_back fallback_location: root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_echo
      @echo = Echo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #should email and name be there? theyre inherited from user    
    def echo_params
      params.require(:echo).permit(:title, :content)
    end
end
