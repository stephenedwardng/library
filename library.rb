class Library

  def initialize(title, rental_details, student_name, date)
    @title = title
    @rental_details = rental_details
    @student_name = student_name
    @date = date
  end

  def get_title()
    return @title
  end

  def get_rental_details()
    return @rental_details
  end

  def get_student_name()
    return @student_name
  end

  def get_date()
    return @date
  end

  def get_all_details(library)
    for books in library
      return 
    end

  end

end