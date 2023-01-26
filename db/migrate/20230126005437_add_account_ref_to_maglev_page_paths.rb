class AddAccountRefToMaglevPagePaths < ActiveRecord::Migration[7.0]
  def change
    add_reference :maglev_page_paths, :account, null: false, foreign_key: true
  end
end
