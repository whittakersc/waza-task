FactoryGirl.define do

  factory(:task) do
    description "Deliver a report"
    type "Bau"
  end

  factory :task_bau, class: Bau do
          description "Deliver a report"
          owner "Andrew"
          status "To do"
          type "Bau"
          report_tag "Profit and Loss"
          due_date "#{(Time.now + 4.days)}"
          time "COB"
          expected_hrs "3"
  end
  factory :task_project, class: Project do
          description "Deliver a report"
          owner "Andrew"
          status "To do"
          type "Project"
          report_tag "Profit and Loss"
          due_date "2013-12-21 00:00:00"
          time "COB"
          expected_hrs "3"
          requested_by "Customer"
  end

  factory(:comment) do
    description "Goooooo Makers"
  end
end