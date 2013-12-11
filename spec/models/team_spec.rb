require 'spec_helper'

describe Team do
  it { should have_many :users }
  it { should have_many :tasks }

 let(:team) do
  	create(:team, tasks: [
  		create(:task_bau, due_date: Time.now),
  		create(:task_bau, due_date: Time.now),
  		create(:task_bau, due_date: 1.month.ago),
  		create(:task_bau, due_date: 1.month.ago),
  		create(:task_project, due_date: Time.now),
  		create(:task_project, due_date: Time.now),
  		create(:task_project, due_date: 1.month.ago),
  		create(:task_project, due_date: 1.month.ago)
  	])
  end

  context 'tasks by type and month' do
  
  	it "has 4 bau tasks" do
  		expect(team.baus.count).to eq 4
  	end

  	it "has 4 project tasks" do
  		expect(team.projects.count).to eq 4
  	end

  	it "has 2 BAU due this month" do
  		baus_this_month = team.tasks_by_type_and_month[:baus_this_month]
  		# raise "#{bau_this_month}"
  		expect(baus_this_month).to have(2).item
  		#could also use month.length
  	end

  	it "has 2 projects due this month" do
  		projects_this_month = team.tasks_by_type_and_month[:projects_this_month]
  		expect(projects_this_month).to have(2).item
  	end

  	it "has 2 BAU due last month" do
  		baus_previous_month = team.tasks_by_type_and_month[:baus_previous_month]
        expect(baus_previous_month).to have(2).item   
    end

    it "has 2 projects due last month" do
    	projects_previous_month = team.tasks_by_type_and_month[:projects_previous_month]
    	expect(projects_previous_month).to have(2).item
    end
  end

  #Test option one working:
  # let(:team) {Team.create}

  # def add_tasks
  #   team.tasks << Bau.create( due_date: Time.now )
  #   team.tasks << Bau.create
  # end

  # before do
  # 	add_tasks
  # end

  # context 'tasks by type and month' do
  
  # 	it "has 2 tasks" do
  # 		expect(team.tasks.count).to eq 2
  # 	end

  # end

  #Test option two working:
  # let(:team) {Team.create}
  # def add_tasks
 #    team.tasks << create(:task_bau, due_date: Time.now)
 #    team.tasks << create(:task_bau)
 #  end

 #  before do
 #  	add_tasks
 #  end

 #  context 'tasks by type and month' do
  
 #  	it "has 2 tasks" do
 #  		expect(team.tasks.count).to eq 2
 #  	end

end
