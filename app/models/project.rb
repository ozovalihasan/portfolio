class Project < ApplicationRecord
  has_many :projects_tags, dependent: :destroy, class_name: 'ProjectsTag'
  has_many :tags, through: :projects_tags

  has_one_attached :project_image
end
