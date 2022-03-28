class Api::V1::CardsController < ApplicationController
  def index
    @cards = policy_scope(Card).where(list_id:(params[:list_id]))
  end

  def create
  end

  def show
    @cards = policy_scope(Card).where(list_id:(params[:list_id]))
  end

  def destroy
  end
end
