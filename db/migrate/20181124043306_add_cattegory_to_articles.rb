class AddCattegoryToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :region, :string #地域
    add_column :articles, :category, :string #記事カテゴリ
    add_column :articles, :division, :string #歴史区分
    add_column :articles, :year, :string #年号
    add_column :articles, :view, :boolean, default: true, null: false #表示/非表示
  end
end
