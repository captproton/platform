class AddAccountRefToPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :account, null: false, foreign_key: true
  end
end
