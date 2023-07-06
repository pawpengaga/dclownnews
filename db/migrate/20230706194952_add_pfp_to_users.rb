class AddPfpToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pfp, :string
  end
end
