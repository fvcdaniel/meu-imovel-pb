class CreateImagems < ActiveRecord::Migration
  def change
    create_table :imagems do |t|
      t.string :arquivo
      t.string :nome
      t.boolean :capa
      t.belongs_to :imovel

      t.timestamps
    end
    add_index :imagems, :imovel_id
  end
end
