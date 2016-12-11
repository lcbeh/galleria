class AddAvatarToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :avatar, :string
  end
end
