class AddAccountRefToMaglevPages < ActiveRecord::Migration[7.0]
  def change
    add_reference :maglev_pages, :account, null: false, foreign_key: true
  end
end
