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

end