class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :blog, null: false, foreign_key: true
      t.string :tittle, limit: 255

      t.timestamps
    end
  end
end
