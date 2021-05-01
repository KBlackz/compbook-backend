class Changelastsold < ActiveRecord::Migration[6.1]
  def change
    change_column :homes, :last_sold, :integer  
  end
end
