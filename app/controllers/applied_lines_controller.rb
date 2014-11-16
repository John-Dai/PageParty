class AppliedLinesController < ApplicationController
  before_action :set_applied_line, only: [:show, :edit, :update, :destroy]

  # GET /applied_lines
  # GET /applied_lines.json
  def index
    @applied_lines = AppliedLine.all
  end

  # GET /applied_lines/1
  # GET /applied_lines/1.json
  def show
  end

  # GET /applied_lines/new
  def new
    @applied_line = AppliedLine.new
  end

  # GET /applied_lines/1/edit
  def edit
  end

  # POST /applied_lines
  # POST /applied_lines.json
  def create
    @applied_line = AppliedLine.new(applied_line_params)

    respond_to do |format|
      if @applied_line.save
        format.html { redirect_to @applied_line, notice: 'Applied line was successfully created.' }
        format.json { render :show, status: :created, location: @applied_line }
      else
        format.html { render :new }
        format.json { render json: @applied_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applied_lines/1
  # PATCH/PUT /applied_lines/1.json
  def update
    respond_to do |format|
      if @applied_line.update(applied_line_params)
        format.html { redirect_to @applied_line, notice: 'Applied line was successfully updated.' }
        format.json { render :show, status: :ok, location: @applied_line }
      else
        format.html { render :edit }
        format.json { render json: @applied_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applied_lines/1
  # DELETE /applied_lines/1.json
  def destroy
    @applied_line.destroy
    respond_to do |format|
      format.html { redirect_to applied_lines_url, notice: 'Applied line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applied_line
      @applied_line = AppliedLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applied_line_params
      params.require(:applied_line).permit(:code)
    end
end
