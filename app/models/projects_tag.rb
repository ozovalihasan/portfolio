class ProjectsTag < ApplicationRecord
  belongs_to :projects, class_name: 'Project', foreign_key: 'project_id'
  belongs_to :tags, class_name: 'Tag', foreign_key: 'tag_id'
end
