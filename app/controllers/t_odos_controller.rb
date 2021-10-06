class TOdosController < ApplicationController
  before_action :set_t_odo, only: %i[ show edit update destroy ]

  # GET /t_odos or /t_odos.json
  def index
    @t_odos = TOdo.all
  end

  # GET /t_odos/1 or /t_odos/1.json
  def show
  end

  # GET /t_odos/new
  def new
    @t_odo = TOdo.new
  end

  # GET /t_odos/1/edit
  def edit
  end

  # POST /t_odos or /t_odos.json
  def create
    @t_odo = TOdo.new(t_odo_params)

    respond_to do |format|
      if @t_odo.save
        format.html { redirect_to @t_odo, notice: "T odo was successfully created." }
        format.json { render :show, status: :created, location: @t_odo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @t_odo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_odos/1 or /t_odos/1.json
  def update
    respond_to do |format|
      if @t_odo.update(t_odo_params)
        format.html { redirect_to @t_odo, notice: "T odo was successfully updated." }
        format.json { render :show, status: :ok, location: @t_odo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @t_odo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_odos/1 or /t_odos/1.json
  def destroy
    @t_odo.destroy
    respond_to do |format|
      format.html { redirect_to t_odos_url, notice: "T odo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_odo
      @t_odo = TOdo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def t_odo_params
      params.require(:t_odo).permit(:title, :contents)
    end
end
