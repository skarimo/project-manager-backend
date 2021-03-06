class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :account_type
      t.integer :manager_id
      t.text :photo_url
      t.timestamps
    end
  end
end
