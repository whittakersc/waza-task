
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

task_list = [
 # [ "Test1", Time.now, 'To Do', "Andrew", 1, 'Bau'],
 # [ "Test2", Time.now, 'To Do', "Simon", 2, 'Project' ],
 # [ "Test3", Time.now, 'In-Progress', "Andrew", 1,'Bau'],
 # [ "Test4", Time.now, 'In-Progress', "Simon", 2,'Project'],
 # [ "Test5", Time.now, 'Complete', "Andrew", 1,'Bau' ],
 # [ "Test11", Time.now, 'Complete', "Simon", 2, 'Project' ],
 # [ "Test6", Time.now.next_month, 'To Do', "Andrew", 1, 'Bau' ],
 # [ "Test7", Time.now.next_month, 'To Do', "Simon", 2,'Project' ],
 # [ "Test8", Time.now.next_month, 'In-progress', "Andrew", 1, 'Bau' ],
 # [ "Test9", Time.now.next_month, 'In-Progress', "Simon", 2, 'Project' ],
 # [ "Test10", Time.now.next_month, 'Complete', "Andrew", 1, 'Bau' ],
 # [ "Test12", Time.now.next_month, 'Complete', "Simon", 2, 'Project' ],
 [ "Test1", Time.now, 'To Do', "Andrew", 2, 'Bau'],
 # [ "Test2", Time.now, 'To Do', "Simon", 1, 'Project' ],
 [ "Test3", Time.now, 'In-Progress', "Andrew", 2,'Bau'],
 # [ "Test4", Time.now, 'In-Progress', "Simon", 1,'Project'],
 [ "Test5", Time.now, 'Complete', "Andrew", 2,'Bau' ],
 # [ "Test11", Time.now, 'Complete', "Simon", 1, 'Project' ],
 [ "Test6", Time.now.next_month, 'To Do', "Andrew", 2, 'Bau' ],
 # [ "Test7", Time.now.next_month, 'To Do', "Simon", 1,'Project' ],
 [ "Test8", Time.now.next_month, 'In-progress', "Andrew", 2, 'Bau' ],
 # [ "Test9", Time.now.next_month, 'In-Progress', "Simon", 1, 'Project' ],
 [ "Test10", Time.now.next_month, 'Complete', "Andrew", 2, 'Bau' ]
 # [ "Test12", Time.now.next_month, 'Complete', "Simon", 1, 'Project' ]
]

task_list.each do | task |
	Task.create( :description => task[0], :due_date => task[1], :status => task[2], :owner => task[3], :team_id => task[4], :type => task[5])
end


