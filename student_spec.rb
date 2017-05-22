require ('minitest/autorun')
require ('minitest/rg')
require_relative('student')

class TestStudent < MiniTest::Test

  def setup()
    @student_1 = Student.new("Eddie", 2)
  end

  def test_name()
    assert_equal("Eddie", @student_1.get_name())
  end

  def test_cohort()
    assert_equal(2, @student_1.get_cohort())
  end

  def test_set_name()
    @student_1.set_name("Elise")
    assert_equal("Elise", @student_1.get_name())
  end

  def test_set_cohort()
    @student_1.set_cohort(1)
    assert_equal(1, @student_1.get_cohort())
  end

  def test_talk()
    speech = "I can talk"
    assert_equal("I can talk", @student_1.talk(speech))
  end

  def test_say_fav_lang()
    fav_lang = "Ruby"
    assert_equal("I love Ruby", @student_1.say_fav_lang(fav_lang))
  end

end