class CreateVocabs < ActiveRecord::Migration[6.1]
  def change
    create_table :vocabs do |t|
      t.string :english
      t.string :japanese
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
