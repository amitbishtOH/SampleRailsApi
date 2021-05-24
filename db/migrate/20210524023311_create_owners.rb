class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
