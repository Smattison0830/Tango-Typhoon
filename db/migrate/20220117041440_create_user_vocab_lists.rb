class CreateUserVocabLists < ActiveRecord::Migration[6.1]
  def change
    create_table :user_vocab_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
