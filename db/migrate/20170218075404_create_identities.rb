class CreateIdentities < ActiveRecord::Migration[5.0]
  def change
    create_table :identities do |t|
      t.belongs_to :user,     index: true, null: true, foreign_key: true

      t.string     :access_token,  index: true
      t.string     :refresh_token, index: true
      t.string     :uid,           index: true, null: true
      t.string     :provider,      index: true, null: true
      t.citext     :email,         index: true
      t.citext     :nickname
      t.string     :first_name
      t.string     :last_name
      t.string     :profile_picture

      t.timestamps
    end
  end
end
