class RemoveBoardFromPin < ActiveRecord::Migration
  def change
    remove_column :pins, :board, :string
  end
end
