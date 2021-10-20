class CreateSticks < ActiveRecord::Migration[6.1]
  def change
    create_table :sticks do |t|
      t.string :name
      t.text :content
      t.text :email

      t.timestamps
    end
  end
end
