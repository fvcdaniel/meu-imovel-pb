class AddTituloToImovel < ActiveRecord::Migration
  def change
    add_column :imovels, :titulo, :string
  end
end
