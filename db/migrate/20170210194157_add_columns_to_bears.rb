class AddColumnsToBears < ActiveRecord::Migration[5.0]
  def change
    add_column :bears, :country, :string
  end
end
