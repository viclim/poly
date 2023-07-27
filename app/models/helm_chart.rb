class HelmChart < ApplicationRecord
  has_one :project, as: :deployable
end
