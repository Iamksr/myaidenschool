class CreateMystreams < ActiveRecord::Migration[6.0]
  def change
    create_table :mystreams do |t|
      t.integer :name
      t.string :dept

      t.timestamps
    end
  end
end
