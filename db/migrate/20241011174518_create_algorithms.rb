class CreateAlgorithms < ActiveRecord::Migration[7.2]
  def change
    create_table :algorithms do |t|
      t.string :title
      t.string :content
      t.string :code
      t.string :tags, array: true, default: []

      t.timestamps
    end
  end
end
