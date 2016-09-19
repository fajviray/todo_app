module TasksHelper
  def fullname(first,last)
    "#{first} #{last}"
  end

  def get_progress(status)
  	case status
  	when '1'
  		"Started"
  	when '2'
  		"Cancelled"
  	when '3'
  		"Finished"
  	end
  end

end
