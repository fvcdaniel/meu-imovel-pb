class AddInitialRoles < ActiveRecord::Migration
  def up
    Role.create!(:name=>'user')
    Role.create!(:name=>'root')
    Role.create!(:name=>'announcer')
    Role.create!(:name=>'admin')
  end

  def down
    Role.destroy_all
  end
end
