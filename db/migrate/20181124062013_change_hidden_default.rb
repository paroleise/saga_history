class ChangeHiddenDefault < ActiveRecord::Migration[5.2]
  def up
    change_column :articles, :hidden, :boolean, default: false, null: false #表示/非表示
  end

  # 変更前の状態
  def down
    change_column :articles, :hidden, :boolean, default: true, null: false #表示/非表示
  end
end
