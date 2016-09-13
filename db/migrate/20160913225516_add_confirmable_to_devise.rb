class AddConfirmableToDevise < ActiveRecord::Migration
  def up
    add_column :users, :confirmation_token, :string

    add_index :users, :confirmation_token, unique: true
  end

  def down
    remove_column :users, :confirmation_token
  end
end
