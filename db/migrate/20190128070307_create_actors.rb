class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :actorname
      t.string :description
      t.date :actordob

      t.timestamps
    end
  end
end
