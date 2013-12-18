FactoryGirl.define do

  factory(:task) do
    description "Deliver a report"
    type "Bau"
  end

  factory :task_bau, class: Bau do
          description "Deliver a BAU report"
          owner "Simon"
          status "To do"
          type "Bau"
          report_tag "Profit and Loss"
          # due_date "#{(Time.now + 4.days)}"
          due_date "2014-01-21 00:00:00"
          time "COB"
          expected_hrs "3"
          team_id "1"
          requested_by "Customer"
  end

  factory :task_project, class: Project do
          description "Deliver a project report"
          owner "Simon"
          status "To do"
          type "Project"
          report_tag "Profit and Loss"
          due_date "2014-01-21 00:00:00"
          time "COB"
          expected_hrs "3"
          requested_by "Customer"
          team_id "1"
  end

  factory :comment, class: Comment do
    description "Goooooo Makers"
  end

end