class Card < ApplicationRecord
    belongs_to :word
    # validates :word_id, presence: true
end
