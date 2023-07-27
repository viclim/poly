class RequirementsYaml < ApplicationRecord
  has_one :project, as: :deployable
end
