class CreateBackstagePages < ActiveRecord::Migration[7.0]
  def change
    create_table :backstage_pages do |t|
      t.string :title
      t.string :slug
      t.text :body

      t.timestamps
    end
  end
end
