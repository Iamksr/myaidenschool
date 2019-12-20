class ChangeColumnType < ActiveRecord::Migration[6.0]
  def change
  	change_column :mystreams, :name, :string
end
end
