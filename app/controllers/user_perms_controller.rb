class UserPermsController < AdminController
  before_action :set_user_perm, only: [:show, :edit, :update, :destroy]

  # GET /user_perms
  # GET /user_perms.json
  def index
    @user_perms = UserPerm.all
  end

  # GET /user_perms/1
  # GET /user_perms/1.json
  def show
  end

  # GET /user_perms/new
  def new
    @user_perm = UserPerm.new
  end

  # GET /user_perms/1/edit
  def edit
  end

  # POST /user_perms
  # POST /user_perms.json
  def create
    @user_perm = UserPerm.new(user_perm_params)

    respond_to do |format|
      if @user_perm.save
        format.html { redirect_to @user_perm, notice: 'User perm was successfully created.' }
        format.json { render :show, status: :created, location: @user_perm }
      else
        format.html { render :new }
        format.json { render json: @user_perm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_perms/1
  # PATCH/PUT /user_perms/1.json
  def update
    respond_to do |format|
      if @user_perm.update(user_perm_params)
        format.html { redirect_to @user_perm, notice: 'User perm was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_perm }
      else
        format.html { render :edit }
        format.json { render json: @user_perm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_perms/1
  # DELETE /user_perms/1.json
  def destroy
    @user_perm.destroy
    respond_to do |format|
      format.html { redirect_to user_perms_url, notice: 'User perm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_perm
      @user_perm = UserPerm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_perm_params
      params.require(:user_perm).permit(:user_id, :perm_id)
    end
end
