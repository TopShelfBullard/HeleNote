class CreateNotesAndMinorTags < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body
      t.integer :major_tag_id, index: true
      t.timestamps null: false
    end

    create_table :minor_tags do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :notes_minor_tags, id: false do |t|
      t.integer :note_id,      index: true
      t.integer :minor_tag_id, index: true
    end
  end
end
