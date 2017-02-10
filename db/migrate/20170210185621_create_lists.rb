class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.column :name, :string
      t.column :cost, :integer
      t.column :orgin, :string
      t.column :class, :string
    end
  end
end
