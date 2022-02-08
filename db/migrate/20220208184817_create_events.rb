class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.date :date
      t.text :description

      t.timestamps null: false
    end
  end
end
