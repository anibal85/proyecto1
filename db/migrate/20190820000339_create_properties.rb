class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :id_property
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
