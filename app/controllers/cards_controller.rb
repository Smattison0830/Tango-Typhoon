class CardsController < ApplicationController
    before_action :set_cards, only: [:create, :edit, :update, :destroy]

    def index
      # @card = Card.new
      # @list = List.find(params[:list_id])
      # @card.list = @list
      # @card.name = @card.list.words.first.english
      # @card.save
      # binding.pry
      # @cards = policy_scope(Card).order(created_at: :desc)
    end
  
    def create
      @card = Card.new(card_params)
      @list = List.find(params[:card][:list_id])
      @card.list = @list
      binding.pry
      # @card.list.words.each do |word|

      authorize @card
      @card.save
    #   redirect_to card_path
    # fruits.each do |fruit|
    #     List.first.words.create!( 
             
    #     )
    end
  
    def edit
    end
  
    def update
      @card.update(card_params)
    end
  
    def destroy
      @card.destroy
      redirect_to cards_path
    end

    private

    def set_card
      @card = Card.find(params[:id])
      authorize @card
    end
  
    def card_params
      params.require(:card).permit(:list_id)
    end
end
