class RecommendationsController < ApplicationController
  before_action :set_recommendation, only: %i[ show edit update destroy ]

  # GET /reccomendations or /reccomendations.json
  def index
    @recommendations = Recommendation.all
  end

  # GET /reccomendations/1 or /reccomendations/1.json
  def show
  end

  # GET /reccomendations/new
  def new
    @recommendation = Recommendation.new
  end

  # GET /reccomendations/1/edit
  def edit
  end

  # POST /reccomendations or /reccomendations.json
  def create
    @recommendation = Recommendation.new(recommendation_params)

    respond_to do |format|
      if @recommendation.save
        format.html { redirect_to @recommendation, notice: "Recommendation was successfully created." }
        format.json { render :show, status: :created, location: @recommendation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reccomendations/1 or /reccomendations/1.json
  def update
    respond_to do |format|
      if @recommendation.update(recommendation_params)
        format.html { redirect_to @recommendation, notice: "Recommendation was successfully updated." }
        format.json { render :show, status: :ok, location: @recommendation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reccomendations/1 or /reccomendations/1.json
  def destroy
    @recommendation.destroy
    respond_to do |format|
      format.html { redirect_to recommendations_url, notice: "Recommendation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommendation
      @recommendation = Recommendation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recommendation_params
      params.require(:recommendation).permit(:title, :creator, :media, :description)
    end
end
