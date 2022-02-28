class WordsController < ApplicationController
    before_action :set_vocabulary, only: [:show]

    def index
        default_words = Word.where(["id = ?", "1"])
        user_words = policy_scope(Word).order(created_at: :desc)
        @words = default_words + user_words
    #   @list = List.find(params[:list_id])
    #   binding_pry
    #   @word = Word.find(params[:id])
    #   @words = policy_scope(Word).order(created_at: :desc)
    #   @words = @words.where(list_id:(params[id]))
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
