class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :message
      t.string :photo
      t.string :city
      t.float :price

      t.timestamps
    end
  end
end
