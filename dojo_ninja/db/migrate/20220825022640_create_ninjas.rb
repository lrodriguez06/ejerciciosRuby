class CreateNinjas < ActiveRecord::Migration[6.1]
  def change
    create_table :ninjas do |t|
      t.references :dojo, null: false, foreign_key: true
      t.string :firt_name, limit: 255
      t.string :last_name, limit: 255

      t.timestamps
    end
  end
end
