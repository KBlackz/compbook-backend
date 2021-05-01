class Changeproprtysize < ActiveRecord::Migration[6.1]
  def change
    change_column :homes, :property_size, :integer
  end
end
