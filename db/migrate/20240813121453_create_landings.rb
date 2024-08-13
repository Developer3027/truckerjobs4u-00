class CreateLandings < ActiveRecord::Migration[7.1]
  def change
    create_table :landings do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :location
      t.text :content

      t.timestamps
    end
  end
end
