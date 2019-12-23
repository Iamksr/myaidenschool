class CreateDevisons < ActiveRecord::Migration[6.0]
  def change
    create_table :devisons do |t|
      t.string :sec

      t.timestamps
    end
  end
end
