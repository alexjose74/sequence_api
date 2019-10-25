class CreateSequences < ActiveRecord::Migration[6.0]
  def change
    create_table :sequences do |t|
      t.string :sequence
      t.string :search
      t.string :matches

      t.timestamps
    end
  end
end
