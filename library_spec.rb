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

  def test_get_all_details()
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
      ], @library_1.get_all_details())

  end

end