class Tag < ApplicationRecord
  has_many :tags_of_project, dependent: :destroy, class_name: 'ProjectsTag'
  has_many :projects, through: :tags_of_project
end
