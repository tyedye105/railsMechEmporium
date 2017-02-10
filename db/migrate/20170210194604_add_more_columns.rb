class AddMoreColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :bears, :description, :string
    add_column :bears, :forte, :string
  end
end
