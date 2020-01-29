class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :name
      t.references :post

      t.timestamps
    end
  end
end
