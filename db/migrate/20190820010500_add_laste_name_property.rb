class AddLasteNameProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :laste_name, :string
  end
end
