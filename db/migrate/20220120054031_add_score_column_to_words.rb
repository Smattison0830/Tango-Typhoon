class AddScoreColumnToWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :score, :integer
  end
end
