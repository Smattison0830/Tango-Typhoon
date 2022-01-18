class Card < ApplicationRecord
    has_one :vocab
    validates :vocab_id, presence: true
end
