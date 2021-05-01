class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :address
      t.string :image
      t.string :data
      t.string :property_size
      t.string :last_sold

      t.timestamps
    end
  end
end
