class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|

      t.string "first_name" :limit => 30
      t.string "last name", :limit => 30
      t.string "email", :default => '', :null => false
      t.string "password" ,:limit => 40
      t.timestamps

    end
  end

  def down
    drop_table :admins

  end
end
