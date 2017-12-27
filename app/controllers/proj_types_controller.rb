class ProjTypesController < AdminController
  before_action :set_proj_type, only: [:show, :edit, :update, :destroy]

  # GET /proj_types
  # GET /proj_types.json
  def index
    @proj_types = ProjType.all
  end

  # GET /proj_types/1
  # GET /proj_types/1.json
  def show
  end

  # GET /proj_types/new
  def new
    @proj_type = ProjType.new
  end

  # GET /proj_types/1/edit
  def edit
  end

  # POST /proj_types
  # POST /proj_types.json
  def create
    @proj_type = ProjType.new(proj_type_params)

    respond_to do |format|
      if @proj_type.save
        format.html { redirect_to @proj_type, notice: 'Proj type was successfully created.' }
        format.json { render :show, status: :created, location: @proj_type }
      else
        format.html { render :new }
        format.json { render json: @proj_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proj_types/1
  # PATCH/PUT /proj_types/1.json
  def update
    respond_to do |format|
      if @proj_type.update(proj_type_params)
        format.html { redirect_to @proj_type, notice: 'Proj type was successfully updated.' }
        format.json { render :show, status: :ok, location: @proj_type }
      else
        format.html { render :edit }
        format.json { render json: @proj_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proj_types/1
  # DELETE /proj_types/1.json
  def destroy
    @proj_type.destroy
    respond_to do |format|
      format.html { redirect_to proj_types_url, notice: 'Proj type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proj_type
      @proj_type = ProjType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proj_type_params
      params.require(:proj_type).permit(:proj_type_id, :description, :service_code)
    end
end
