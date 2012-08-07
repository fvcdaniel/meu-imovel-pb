class CreateImovels < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
      t.belongs_to :user
      t.belongs_to :estado
      t.belongs_to :cidade
      t.belongs_to :bairro
      t.belongs_to :tipo
      t.belongs_to :pretensao
      t.string :situacao
      t.string :endereco
      t.integer :quarto
      t.integer :suite
      t.integer :banheiro
      t.integer :sala
      t.integer :cozinha
      t.integer :dependencia
      t.decimal :area
      t.string :posicao
      t.integer :garagem
      t.integer :piscina
      t.decimal :valor
      t.decimal :condominio
      t.text :descricao

      t.timestamps
    end
    add_index :imovels, :user_id
    add_index :imovels, :estado_id
    add_index :imovels, :cidade_id
    add_index :imovels, :bairro_id
    add_index :imovels, :tipo_id
    add_index :imovels, :pretensao_id
  end
end
