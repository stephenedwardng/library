class Library

  def initialize(books)
    @books = books
  end

  def get_books()
    return @books
  end

  def find_book_by_title(book_title)
    # search through library array for book title then return hash element
    for book in @books
      if book[:title] == book_title
        return book
      end
    end

    # specify 'nil' to be returned if not found 
    return nil
  end

  def find_book_by_title_return_rental(book_title)
    # call find_book_in_title method
    book = find_book_by_title(book_title)

    # return rental details only
    return book[:rental_details]
  end

  def add_book(new_book)
    # Check if book title exists

    # add new book
    @books << new_book

  end

end