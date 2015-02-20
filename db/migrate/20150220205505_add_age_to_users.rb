class AddAgeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :datetime
  end
end
