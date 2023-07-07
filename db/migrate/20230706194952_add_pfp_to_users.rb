class AddPfpToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pfp, :string, default: "https://static.vecteezy.com/system/resources/thumbnails/005/544/770/small/profile-icon-design-free-vector.jpg"
  end
end
