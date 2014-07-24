class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :add_avatar_to_users
      t.string :avatar

      t.timestamps
    end
  end
end
