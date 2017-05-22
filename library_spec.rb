require ('minitest/autorun')
require ('minitest/rg')
require_relative('library')

class TestLibrary < MiniTest::Test

  def setup()
    @library_1 = Library.new([
      { 
          title: "The Trial",
          rental_details: { 
           student_name: "Eddie", 
           date: "01/12/16"
          }
      },
      { 
          title: "2001: A Space Odyssey",
          rental_details: { 
           student_name: "Elise", 
           date: "02/10/32"
          }
      },
      { 
          title: "The Origin of Species",
          rental_details: { 
           student_name: "Lynne", 
           date: "07/11/18"
          }
      }
      ])
  end

  def test_get_books()
    assert_equal([
      { 
          title: "The Trial",
          rental_details: { 
           student_name: "Eddie", 
           date: "01/12/16"
          }
      },
      { 
          title: "2001: A Space Odyssey",
          rental_details: { 
           student_name: "Elise", 
           date: "02/10/32"
          }
      },
      { 
          title: "The Origin of Species",
          rental_details: { 
           student_name: "Lynne", 
           date: "07/11/18"
          }
      }
      ], @library_1.get_books())
  end

  def test_find_book_by_title__returns_book
    book = @library_1.find_book_by_title("The Trial")
    assert_equal({ 
          title: "The Trial",
          rental_details: { 
           student_name: "Eddie", 
           date: "01/12/16"
          }
      }, book)
  end

  def test_find_book_by_title__returns_nil
    book = @library_1.find_book_by_title("The Castle")
    assert_nil(book)
  end

  def test_find_book_by_title_return_rental
    book = @library_1.find_book_by_title_return_rental("The Trial")
    assert_equal({ 
           student_name: "Eddie", 
           date: "01/12/16"
          }, book)
  end

  def test_add_book
    new_book = @library_1.add_book("The Metamorphosis")
    assert_equal({ 
          title: "The Metamorphosis",
          rental_details: { 
           student_name: "", 
           date: ""
          }
      }, @library_1.find_book_by_title("The Metamorphosis"))

  end


end