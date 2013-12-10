class Task < ActiveRecord::Base

  belongs_to :team

  def self.select_options
    [["Bau","Bau"],["Project","Project"]]
  end

 #  @child_classes = []

	# def self.inherited(child)
	#   @child_classes << child
	#   super # important!
	# end

	# def self.child_classes
	#   @child_classes
	# end

end
