class CreateVocabLists < ActiveRecord::Migration[6.1]
  def change
    create_table :vocab_lists do |t|
      t.string :name
      t.references :vocab, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
