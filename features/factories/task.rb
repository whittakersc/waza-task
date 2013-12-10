FactoryGirl.define do
  factory :task_bau, class: Bau do
          description "Deliver a report"
          owner "Andrew"
          status "To do"
          type "Bau"
          report_tag "Profit and Loss"
  end
  factory :task_project, class: Project do
          description "Deliver a report"
          owner "Andrew"
          status "To do"
          type "Project"
          requested_by "Customer"
  end
end