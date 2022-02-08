class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :event, foreign_key: true, null: false
      t.string :author, null: false
      t.text :content

      t.timestamps null: false
    end
  end
end
