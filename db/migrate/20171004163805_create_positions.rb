class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.string :title
      t.string :created_at
      t.string :location
      t.string :kind
      t.text :description

      t.timestamps
    end
  end
end
