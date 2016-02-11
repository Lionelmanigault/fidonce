class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :lname
      t.string :fname
      t.string :email

      t.timestamps null: false
    end
  end
end
