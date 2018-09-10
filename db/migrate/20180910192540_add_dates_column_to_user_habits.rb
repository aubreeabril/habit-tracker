class AddDatesColumnToUserHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :user_habits, :dates, :text, array:true, default:[]
  end
end
