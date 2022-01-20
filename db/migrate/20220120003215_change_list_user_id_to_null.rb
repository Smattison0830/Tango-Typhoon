class ChangeListUserIdToNull < ActiveRecord::Migration[6.1]
  def change
    change_column :lists, :user_id, :bigint, null: true
  end
end
