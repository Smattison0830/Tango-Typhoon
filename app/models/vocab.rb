class Vocab < ApplicationRecord
    belongs_to :vocab_list
    belongs_to :card
end
