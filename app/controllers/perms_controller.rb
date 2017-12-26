class PermsController < ApplicationController
  before_action :set_perm, only: [:show, :edit, :update, :destroy]

  # GET /perms
  # GET /perms.json
  def index
    @perms = Perm.all
  end

  # GET /perms/1
  # GET /perms/1.json
  def show
  end

  # GET /perms/new
  def new
    @perm = Perm.new
  end

  # GET /perms/1/edit
  def edit
  end

  # POST /perms
  # POST /perms.json
  def create
    @perm = Perm.new(perm_params)

    respond_to do |format|
      if @perm.save
        format.html { redirect_to @perm, notice: 'Perm was successfully created.' }
        format.json { render :show, status: :created, location: @perm }
      else
        format.html { render :new }
        format.json { render json: @perm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perms/1
  # PATCH/PUT /perms/1.json
  def update
    respond_to do |format|
      if @perm.update(perm_params)
        format.html { redirect_to @perm, notice: 'Perm was successfully updated.' }
        format.json { render :show, status: :ok, location: @perm }
      else
        format.html { render :edit }
        format.json { render json: @perm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perms/1
  # DELETE /perms/1.json
  def destroy
    @perm.destroy
    respond_to do |format|
      format.html { redirect_to perms_url, notice: 'Perm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perm
      @perm = Perm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perm_params
      params.require(:perm).permit(:description)
    end
end
