class VocabularyController < ApplicationController
    before_action :set_vocabulary, only: [:show]

  def index
    @words = policy_scope(Word).order(created_at: :desc)
  end

  def show
    @word = Word.new
  end

  private

  def set_vocabulary
    @word = Word.find(params[:id])
    authorize @word
  end
end
