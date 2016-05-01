class MinorTag < ActiveRecord::Base
  has_and_belongs_to_many :notes, :join_table => "notes_minor_tags"
end
