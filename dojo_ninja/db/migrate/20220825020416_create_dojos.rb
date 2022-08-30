class CreateDojos < ActiveRecord::Migration[6.1]
  def change
    create_table :dojos do |t|
      t.string :name, limit: 255
      t.string :city, limit: 255
      t.string :state, limit: 2

      t.timestamps
    end
  end
end
