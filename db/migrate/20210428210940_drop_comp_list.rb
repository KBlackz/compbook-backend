class DropCompList < ActiveRecord::Migration[6.1]
  def change
    drop_table :comp_lists
  end
end
