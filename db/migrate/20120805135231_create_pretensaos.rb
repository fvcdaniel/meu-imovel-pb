class CreatePretensaos < ActiveRecord::Migration
  def change
    create_table :pretensaos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
