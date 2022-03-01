class WordsController < ApplicationController
    before_action :set_words, only: [:show]

    def index
        @words = policy_scope(Word).where(list_id:(params[:list_id]))
    #   @list = List.find(params[:list_id])
    #   @words = policy_scope(Word).order(created_at: :desc)
    #   @words = @words.where(list_id:(params[id]))
    end
  
    def show
      @word = Word.new
    end
  
    private
  
    def set_words
      @word = Word.find(params[:id])
      authorize @word
    end
end
