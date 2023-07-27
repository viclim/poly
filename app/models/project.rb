class Project < ApplicationRecord
  belongs_to :deployable, polymorphic: true

  def self.make
    if rand(0..1).positive?
      chart = HelmChart.create(chart_path: '/Chart.yaml')
    else
      chart = RequirementsYaml.create(requirements_path: '/Chart.yaml')
    end
    create(deployable: chart, name: Faker::Name.name)
  end
end
