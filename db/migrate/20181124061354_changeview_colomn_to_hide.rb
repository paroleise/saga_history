class ChangeviewColomnToHide < ActiveRecord::Migration[5.2]
  # 変更内容
  def up
    change_column :articles, :view, :boolean, default: false, null: false #表示/非表示
  end

  # 変更前の状態
  def down
    change_column :articles, :view, :boolean, default: true, null: false #表示/非表示
  end


  def change
  rename_column :articles, :view, :hidden
  end

end
