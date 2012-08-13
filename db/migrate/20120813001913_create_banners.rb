class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.belongs_to :imovel
      t.timestamp :inicio
      t.timestamp :fim
      t.boolean :ativo

      t.timestamps
    end
    add_index :banners, :imovel_id
  end
end
