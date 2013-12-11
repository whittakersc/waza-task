class Bau < Task

	scope :current_month, -> {
		where(due_date: (Time.now.beginning_of_month..Time.now.end_of_month))
	}

	scope :previous_month, -> {
		where(due_date: (1.month.ago.beginning_of_month..1.month.ago.end_of_month))
	}

	scope :status_to_do, -> {
		where(status: 'To Do')
	}

	scope :status_in_progress, -> {
		where(status: 'In-Progress')
	}

	scope :status_complete, -> {
		where(status: 'Complete')
	}
	
end
