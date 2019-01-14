class AddRegionCordinateToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :regionCoordinateX, :integer
    add_column :articles, :regionCoordinateY, :integer
  end
end
