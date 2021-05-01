class CreateComplists < ActiveRecord::Migration[6.1]
  def change
    create_table :complists do |t|
      t.belongs_to :home, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :user_note

      t.timestamps
    end
  end
end
