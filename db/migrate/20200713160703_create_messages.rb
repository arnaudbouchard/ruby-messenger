class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :text
      t.string :visibility
      t.string :recipient
      t.string :author

      t.timestamps
    end
  end
end
