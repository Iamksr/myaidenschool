class ChangeColumnNam < ActiveRecord::Migration[6.0]
  def change
  	change_column :members, :father_name, :string
  end
end
