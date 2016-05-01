class CreateMajorTags < ActiveRecord::Migration
  def change
    create_table :major_tags do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
