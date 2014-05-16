class CreateDirts < ActiveRecord::Migration
  def change
    create_table :dirts do |t|
      t.string :name
      t.string :content
      t.datetime :date

      t.timestamps
    end
  end
end
