class AddSnippetToProject < ActiveRecord::Migration[7.2]
  def change
    add_column :projects, :snippet, :string
  end
end
