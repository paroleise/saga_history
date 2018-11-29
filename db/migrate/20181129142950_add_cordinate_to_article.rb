class AddCordinateToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :coordinateX, :integer 
    add_column :articles, :coordinateY, :integer
  end
end
