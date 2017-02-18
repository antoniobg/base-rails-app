class CreateIdentities < ActiveRecord::Migration[5.0]
  def change
    create_table :identities do |t|
      t.string     :uid,      index: true, null: true
      t.string     :provider, index: true, null: true
      t.belongs_to :user,     index: true, null: true, foreign_key: true

      t.timestamps
    end
  end
end
