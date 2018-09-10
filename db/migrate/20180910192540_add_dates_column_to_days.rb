class AddDatesColumnToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :dates, :text, array:true, default:[]
  end
end
