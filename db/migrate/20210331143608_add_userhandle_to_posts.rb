class AddUserhandleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :userhandle, :string
  end
end
