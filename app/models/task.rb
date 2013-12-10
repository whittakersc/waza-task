class Task < ActiveRecord::Base

  belongs_to :team
  has_many :comments

  def self.select_options(child)
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
