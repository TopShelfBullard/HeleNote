["ruby", "bash", "git"].each do |name|
  MajorTag.create(name: name)
  MinorTag.create(name: name)
end

Note.create(
  title: "New Rails Repo",
  body: "rails new app_name\ncd app_name\ngit init",
  major_tag_id: MajorTag.where(name: "ruby").first.id
).minor_tags << MinorTag.all