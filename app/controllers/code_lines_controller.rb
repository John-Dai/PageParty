class CodeLinesController < ApplicationController
  before_action :set_code_line, only: [:show, :edit, :update, :destroy]

  # GET /code_lines
  # GET /code_lines.json
  def index
    @code_lines = CodeLine.all
  end

  # GET /code_lines/1
  # GET /code_lines/1.json
  def show
  end

  # GET /code_lines/new
  def new
    @code_line = CodeLine.new
  end

  # GET /code_lines/1/edit
  def edit
  end

  # POST /code_lines
  # POST /code_lines.json
  def create
    @code_line = CodeLine.new(code_line_params)

    respond_to do |format|
      if @code_line.save
        format.html { redirect_to @code_line, notice: 'Code line was successfully created.' }
        format.json { render :show, status: :created, location: @code_line }
      else
        format.html { render :new }
        format.json { render json: @code_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_lines/1
  # PATCH/PUT /code_lines/1.json
  def update
    respond_to do |format|
      if @code_line.update(code_line_params)
        format.html { redirect_to @code_line, notice: 'Code line was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_line }
      else
        format.html { render :edit }
        format.json { render json: @code_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_lines/1
  # DELETE /code_lines/1.json
  def destroy
    @code_line.destroy
    respond_to do |format|
      format.html { redirect_to code_lines_url, notice: 'Code line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_line
      @code_line = CodeLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_line_params
      params.require(:code_line).permit(:code)
    end
end
