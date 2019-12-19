class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :section
      t.string :father_name
      t.string :address

      t.timestamps
    end
  end
end
