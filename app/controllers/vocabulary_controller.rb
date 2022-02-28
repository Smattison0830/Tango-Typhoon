class VocabularyController < ApplicationController
    before_action :set_vocabulary, only: [:show]

  def index
    @list = List.find(params[:list_id])
    @word = Word.find(params[:id])
    @words = policy_scope(Word).order(created_at: :desc)
    @words = @words.where(list_id:(params[id]))
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
