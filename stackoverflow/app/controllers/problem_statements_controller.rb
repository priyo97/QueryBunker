class ProblemStatementsController < ApplicationController
  before_action :set_problem_statement, only: [:show, :edit, :update, :destroy]

  # GET /problem_statements
  # GET /problem_statements.json
  def index
    @problem_statements = ProblemStatement.all
  end

  # GET /problem_statements/1
  # GET /problem_statements/1.json
  def show
  end

  # GET /problem_statements/new
  def new
    @problem_statement = ProblemStatement.new
  end

  # GET /problem_statements/1/edit
  def edit
  end

  # POST /problem_statements
  # POST /problem_statements.json
  def create
    @problem_statement = ProblemStatement.new(problem_statement_params)

    respond_to do |format|
      if @problem_statement.save
        format.html { redirect_to @problem_statement, notice: 'Problem statement was successfully created.' }
        format.json { render :show, status: :created, location: @problem_statement }
      else
        format.html { render :new }
        format.json { render json: @problem_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problem_statements/1
  # PATCH/PUT /problem_statements/1.json
  def update
    respond_to do |format|
      if @problem_statement.update(problem_statement_params)
        format.html { redirect_to @problem_statement, notice: 'Problem statement was successfully updated.' }
        format.json { render :show, status: :ok, location: @problem_statement }
      else
        format.html { render :edit }
        format.json { render json: @problem_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problem_statements/1
  # DELETE /problem_statements/1.json
  def destroy
    @problem_statement.destroy
    respond_to do |format|
      format.html { redirect_to problem_statements_url, notice: 'Problem statement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problem_statement
      @problem_statement = ProblemStatement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def problem_statement_params
      params.require(:problem_statement).permit(:question, :answer)
    end
end
