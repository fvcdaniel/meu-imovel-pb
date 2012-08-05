class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.belongs_to :estado
      t.string :nome
      t.integer :chave

      t.timestamps
    end
    add_index :cidades, :estado_id
  end
end
