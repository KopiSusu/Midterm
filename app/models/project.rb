class Project < ActiveRecord::Base
  has_many :materials, through: :needed_materials
  has_many :needed_materials

  has_many :types, through: :project_types
  has_many :project_types

  has_many :users, through: :current_projects
  has_many :current_projects

  has_many :guides, through: :join_guides
  has_many :join_guides

  validates_presence_of :name, :rating
end