class CreateMochis < ActiveRecord::Migration[5.2]
  def change
    create_table :mochis do |t|
      t.timestamps
    end
  end
end
