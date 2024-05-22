class RemoveColumns < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :text
  end
end
