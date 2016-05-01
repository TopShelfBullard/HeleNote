class Note < ActiveRecord::Base
  belongs_to :major_tag
  has_and_belongs_to_many :minor_tags, :join_table => "notes_minor_tags"
end
