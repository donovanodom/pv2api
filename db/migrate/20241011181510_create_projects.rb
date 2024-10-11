class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :github_link
      t.string :site

      t.timestamps
    end
  end
end
