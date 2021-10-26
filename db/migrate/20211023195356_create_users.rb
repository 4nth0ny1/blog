class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :user_name, null: false
      t.string :bio
      t.string :email, null: false
      t.string :mobile
      t.boolean :admin, default: false
      t.string :password_digest
      t.string :profile_image

      t.timestamps
    end
  end
end
