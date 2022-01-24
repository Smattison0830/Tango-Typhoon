class VocabularyController < ApplicationController
    before_action :set_word, only: [:show]

  def index
    # COMMupload img to cloudinary to create a url that can be called
    # @words = Word.new
    # @api_scan = params.dig(:plant, :image).present?
    @words = policy_scope(Word).order(created_at: :desc)
    # elsif params[:query].present?
    #   @query = params[:query]
    #   @plants = policy_scope(Plant).search_by_name(params[:query]).order(created_at: :desc)
    # elsif @api_scan
    #   api_call = ApiCall.new(params[:plant][:image])
    #   # plant_search_name = TestHash["suggestions"].first["plant_name"]
    #   @plant_search_name = api_call.call_api
    #   @plants = policy_scope(Plant).search_by_name(@plant_search_name)
    # end
  end

  def show
    @word = Word.new
  end

  def filter
    # @plant = Plant.new
    # @water = params[:watering_schedule]
    # @light = params[:light]
    # if @water.present? && @light.present?
    #   @plants = policy_scope(Plant).where(watering_schedule: @water, light:@light)
    # elsif @water.present?
    #   @plants = policy_scope(Plant).where(watering_schedule: @water)
    # elsif @light.present?
    #   @plants = policy_scope(Plant).where(light:@light)
    #   @plants = policy_scope(Plant).where("watering_schedule LIKE ? AND light LIKE ?", @water, @light)
    # else
    # @plants = policy_scope(Plant).order(created_at: :asc)
    # end
    # render :index
  end

  private

  def set_vocabulary
    @word = Word.find(params[:id])
    authorize @word
  end
end
