class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.belongs_to :cidade
      t.string :nome
      t.integer :chave

      t.timestamps
    end
    add_index :bairros, :cidade_id
  end
end
