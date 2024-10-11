class AlgorithmsController < ApplicationController
  before_action :set_algorithm, only: %i[ show update destroy ]

  # GET /algorithms
  def index
    @algorithms = Algorithm.all

    render json: @algorithms
  end

  # GET /algorithms/1
  def show
    render json: @algorithm
  end

  # POST /algorithms
  def create
    @algorithm = Algorithm.new(algorithm_params)

    if @algorithm.save
      render json: @algorithm, status: :created, location: @algorithm
    else
      render json: @algorithm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /algorithms/1
  def update
    if @algorithm.update(algorithm_params)
      render json: @algorithm
    else
      render json: @algorithm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /algorithms/1
  def destroy
    @algorithm.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_algorithm
      @algorithm = Algorithm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def algorithm_params
      params.require(:algorithm).permit(:title, :content, :code, :tags => [])
    end
end
