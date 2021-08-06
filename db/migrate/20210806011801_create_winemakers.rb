class CreateWinemakers < ActiveRecord::Migration[5.2]
  def change
    create_table :winemakers do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      t.string :work

      t.timestamps
    end
  end
end
