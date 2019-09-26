class CreateJars < ActiveRecord::Migration[6.0]
  def change
    create_table :jars do |t|
      t.string :name

      t.timestamps
    end
  end
end
