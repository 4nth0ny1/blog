class CreateSuperUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :super_users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :user_name, null: false
      t.string :bio
      t.string :email, null: false
      t.string :mobile
      t.string :password_digest
      t.string :profile_image
      t.references :user,  null: false, foreign_key: true

      t.timestamps
    end
  end
end
