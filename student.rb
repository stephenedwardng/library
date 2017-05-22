class Student

    def initialize(name, cohort)
      @name = name
      @cohort = cohort
    end

    def get_name()
      return @name
    end

    def get_cohort()
      return @cohort
    end

    def set_name(name)
      @name = name
    end

    def set_cohort(cohort)
      @cohort = cohort
    end

    def talk(speech)
      return speech
    end

    def say_fav_lang(lang)
      return "I love #{lang}"
    end

end