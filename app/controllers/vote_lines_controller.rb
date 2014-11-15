class VoteLinesController < ApplicationController
  before_action :set_vote_line, only: [:show, :edit, :update, :destroy]

  # GET /vote_lines
  # GET /vote_lines.json
  def index
    @vote_lines = VoteLine.all
  end

  # GET /vote_lines/1
  # GET /vote_lines/1.json
  def show
  end

  # GET /vote_lines/new
  def new
    @vote_line = VoteLine.new
  end

  # GET /vote_lines/1/edit
  def edit
  end

  # POST /vote_lines
  # POST /vote_lines.json
  def create
    @vote_line = VoteLine.new(vote_line_params)

    respond_to do |format|
      if @vote_line.save
        format.html { redirect_to @vote_line, notice: 'Vote line was successfully created.' }
        format.json { render :show, status: :created, location: @vote_line }
      else
        format.html { render :new }
        format.json { render json: @vote_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vote_lines/1
  # PATCH/PUT /vote_lines/1.json
  def update
    respond_to do |format|
      if @vote_line.update(vote_line_params)
        format.html { redirect_to @vote_line, notice: 'Vote line was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote_line }
      else
        format.html { render :edit }
        format.json { render json: @vote_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_lines/1
  # DELETE /vote_lines/1.json
  def destroy
    @vote_line.destroy
    respond_to do |format|
      format.html { redirect_to vote_lines_url, notice: 'Vote line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote_line
      @vote_line = VoteLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_line_params
      params.require(:vote_line).permit(:code, :votes)
    end
end
