class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :picture
      t.integer :points
      t.references :vocab, null: false, foreign_key: true

      t.timestamps
    end
  end
end
