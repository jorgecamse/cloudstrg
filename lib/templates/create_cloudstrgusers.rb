class CreateCloudstrgusers < ActiveRecord::Migration
  def up
    create_table :cloudstrgusers do |t|
      t.string :username

      t.timestamps
    end
  end

  def down
    drop_table :cloudstrgusers
  end
end
