class VocabList < ApplicationRecord
    belongs_to :user
    has_many :vocab

    validates :user_id, presence: true
    validates :vocab_id, presence: true
end
