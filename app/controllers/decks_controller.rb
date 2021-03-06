class DecksController < ApplicationController
    def index
        default_lists = List.where(["id = ?", "1"])
        user_lists = policy_scope(List).order(created_at: :asc)
        @decks = default_lists + user_lists
    end
end
