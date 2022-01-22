class RenameColumnWordIdToListId < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :word_id, :list_id
  end
end
