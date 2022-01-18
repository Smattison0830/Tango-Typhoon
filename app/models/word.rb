class Word < ApplicationRecord
    belongs_to :list
    has_one :card
end
