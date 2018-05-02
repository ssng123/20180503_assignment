class CreateJoongGos < ActiveRecord::Migration[5.0]
  def change
    create_table :joong_gos do |t|
      t.string :팔기
      t.text :물건
      t.integer :가격
      t.boolean :상태

      t.timestamps
    end
  end
end
